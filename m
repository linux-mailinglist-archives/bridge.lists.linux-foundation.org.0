Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D18D73A6CB
	for <lists.bridge@lfdr.de>; Sun,  9 Jun 2019 18:23:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B3E66CB7;
	Sun,  9 Jun 2019 16:23:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21DFB2C
	for <bridge@lists.linux-foundation.org>;
	Sun,  9 Jun 2019 16:23:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D71CC711
	for <bridge@lists.linux-foundation.org>;
	Sun,  9 Jun 2019 16:23:20 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id a14so8612004edv.12
	for <bridge@lists.linux-foundation.org>;
	Sun, 09 Jun 2019 09:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=7DVC0/uiSTBqozKjpL2lztjn7upfih/z+bOVWSHs3GU=;
	b=RGk2eK93ZiEJPgkhLoILYOX9fmoTjER9GIhmCHW2weCRphBKUIBtT+4Jvn17m5oXDF
	LA1FShm3G1OTeFXqxHGc+IJNVM7NudBE8QQIxssr6zbO2CebqCOIk/v0Ez/Fw4f1JuxD
	LMVrWRIZlX2R7mz4sNARcGYJDgOQf3Js7JzbOdpQg8c/WFHqQdu3Vq9Psc2vcwrQKnGj
	J420O0BBi5s0CjY+TbillB/YtpkxdR3Uefv09DOg9Sf1H93wAlh7qmswtLK/9YF1OldY
	R1eViaCVuUNpviZ5g/I0Kh/Kln1Vux5VCy4HPTd4xa65nxsYIP2kddV422zrU4zO/Blf
	UN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=7DVC0/uiSTBqozKjpL2lztjn7upfih/z+bOVWSHs3GU=;
	b=Li5pghfgQWk+D9mg87RNVA/S4scV1Rbk7kmcyEwO4XnljWQ6W9XlZq0emboRIp+WFo
	IzdSjwgU5rJyEOhKzgZTKvuP4ILrDmL1Ov3XdaEPT/jDgEeov+zqD5HB/DE6SM5MLmuR
	s8rPLA3wU1DBZ6Fv2I2DQslgJMzHVrqsg9T/YD1QaoTbe2CtpqBzclovw0h4cLurNNjr
	eKd6X5kUOnco28UwoyaERWxj/OZei6BnGyUNPitaG1qOc6RKcnGRPXJ2cWLpbdPmxwCV
	OOwu1NN4ZkwInajEqJl2mcGvq+icc+ojBm3UxzEebiCTWxVXE/QFRrI89oySxsz9fp/3
	HX9A==
X-Gm-Message-State: APjAAAWaZnhKg6wtlzFMlALnt6qpx8D2PrANPaBJHT17VQNb1Tib6E3k
	oqAbmTx8dkfSIfN2ppTdoSkplg==
X-Google-Smtp-Source: APXvYqxlMVg9vnSVRsQHUpfB2JSCZ9E7+bhFFVyhiBzP3+OhLOXa/0ZBe7AKt+td6mO2I+loLlf9zw==
X-Received: by 2002:a17:906:308a:: with SMTP id
	10mr16029454ejv.124.1560097399433; 
	Sun, 09 Jun 2019 09:23:19 -0700 (PDT)
Received: from localhost.localdomain (ip5f5bd67a.dynamic.kabel-deutschland.de.
	[95.91.214.122]) by smtp.gmail.com with ESMTPSA id
	r12sm1069489eda.39.2019.06.09.09.23.17
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 09 Jun 2019 09:23:18 -0700 (PDT)
From: Christian Brauner <christian@brauner.io>
To: davem@davemloft.net, netdev@vger.kernel.org,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	bridge@lists.linux-foundation.org
Date: Sun,  9 Jun 2019 18:23:03 +0200
Message-Id: <20190609162304.3388-1-christian@brauner.io>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ueberall@themenzentrisch.de, vapier@chromium.org, richardrose@google.com,
	nikolay@cumulusnetworks.com, joelhockey@chromium.org,
	roopa@cumulusnetworks.com, fw@strlen.de,
	linux-kernel@vger.kernel.org, tyhicks@canonical.com,
	bhthompson@google.com, Christian Brauner <christian@brauner.io>,
	kadlec@blackhole.kfki.hu, smbarber@chromium.org, pablo@netfilter.org
Subject: [Bridge] [PATCH net-next v1 0/1] br_netfilter: enable in
	non-initial netns
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Hey everyone,

/* v1 */
This is a rework of the patch to not touch struct net at all and instead
rely on the pernet infrastructure directly to namespace the sysctls.

/* v0 */
This is another resend of the same patch series. I have received so many
requests, pings, and questions that I would really like to push for this
again.

Over time I have seen multiple reports by users who want to run applications
(Kubernetes e.g. via [1]) that require the br_netfilter module in
non-initial network namespaces. There are *a lot* of issues for this. A
shortlist including ChromeOS and other big users is found below under
[2]! Even non-devs already tried to get more traction on this by
commenting on the patchset (cf. [3]).

Currently, the /proc/sys/net/bridge folder is only created in the
initial network namespace. This patch series ensures that the
/proc/sys/net/bridge folder is available in each network namespace if
the module is loaded and disappears from all network namespaces when the
module is unloaded.
The patch series also makes the sysctls:

bridge-nf-call-arptables
bridge-nf-call-ip6tables
bridge-nf-call-iptables
bridge-nf-filter-pppoe-tagged
bridge-nf-filter-vlan-tagged
bridge-nf-pass-vlan-input-dev

apply per network namespace. This unblocks some use-cases where users
would like to e.g. not do bridge filtering for bridges in a specific
network namespace while doing so for bridges located in another network
namespace.
The netfilter rules are afaict already per network namespace so it
should be safe for users to specify whether a bridge device inside their
network namespace is supposed to go through iptables et al. or not.
Also, this can already be done by setting an option for each individual
bridge via Netlink. It should also be possible to do this for all
bridges in a network namespace via sysctls.

Thanks!
Christian

[1]: https://github.com/zimmertr/Bootstrap-Kubernetes-with-Ansible
[2]: https://bugs.chromium.org/p/chromium/issues/detail?id=878034 
     https://github.com/lxc/lxd/issues/5193
     https://discuss.linuxcontainers.org/t/bridge-nf-call-iptables-and-swap-error-on-lxd-with-kubeadm/2204
     https://github.com/lxc/lxd/issues/3306
     https://gitlab.com/gitlab-org/gitlab-runner/issues/3705
     https://ubuntuforums.org/showthread.php?t=2415032
     https://medium.com/@thomaszimmerman93/hi-im-unable-to-get-kubeadm-init-to-run-due-to-br-netfilter-not-being-loaded-within-the-5642a4ccfece
[3]: https://lkml.org/lkml/2019/3/7/365

*** BLURB HERE ***

Christian Brauner (1):
  br_netfilter: namespace bridge netfilter sysctls

 include/net/netfilter/br_netfilter.h |   3 +-
 net/bridge/br_netfilter_hooks.c      | 291 ++++++++++++++++++---------
 net/bridge/br_netfilter_ipv6.c       |   2 +-
 3 files changed, 204 insertions(+), 92 deletions(-)

-- 
2.21.0

