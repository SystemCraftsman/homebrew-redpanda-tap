# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Redpanda < Formula
  desc "Redpanda CLI & toolbox"
  homepage "https://redpanda.com"
  version "22.3.6"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/redpanda-data/redpanda/releases/download/v22.3.6/rpk_22.3.6_darwin_arm64.tar.gz"
      sha256 "90a94cc64d95e4a09c8119b22af6bf54243c628d54bcda02d1753d370201e6a8"

      def install
        bin.install "rpk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/redpanda-data/redpanda/releases/download/v22.3.6/rpk_22.3.6_darwin_amd64.tar.gz"
      sha256 "0ff26fd599a5b32ba7e051474c63ca90f755892f617b6323034df05b75868864"

      def install
        bin.install "rpk"
      end
    end
  end

  def caveats
    <<~EOS
      Redpanda Keeper (rpk) is Redpanda's command line interface (CLI)
      utility. The rpk commands let you configure, manage, and tune
      Redpanda clusters. They also let you manage topics, groups,
      and access control lists (ACLs).
      Start a three-node docker cluster locally:

          rpk container start -n 3

      Interact with the cluster using commands like:

          rpk topic list

      When done, stop and delete the docker cluster:

          rpk container purge

      For more examples and guides, visit: https://docs.redpanda.com
    EOS
  end
end
