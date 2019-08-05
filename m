Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D04948206E
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:38:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F0931F8C;
	Mon,  5 Aug 2019 15:37:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5750F0B
	for <bridge@lists.linux-foundation.org>;
	Mon,  5 Aug 2019 15:37:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4D04982F
	for <bridge@lists.linux-foundation.org>;
	Mon,  5 Aug 2019 15:37:51 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f17so73441623wme.2
	for <bridge@lists.linux-foundation.org>;
	Mon, 05 Aug 2019 08:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=gRsgYUHBudFevX5r+ua05+FIbiFDZGlVLL58B2hcd1o=;
	b=jSo900+Vk/Jcr+b/5cAfdibWFXerywQgy6HdrNIWpfXyZFwlKHOJD3796UiSRkpcUC
	dErDdF6N91sP1fcyHlMeGC49WWOTuNEX3LMB8nhq7/uEYPzr1xCWnTQcz4vxYAHQZmdn
	r2Q/aEc7xvv/K/n7WAsnTbGrnw6vMdSHQjmedtcJ6qmgqFHvifgLIKUeVNnn2TQ551Zp
	Jh8zYysfRD8yV9XpQdWYWXgGARpHeB+lMkHg5GiQdu2bfURUuTWPfseXK4ZmjI/tGpgI
	eONxb9+1qHC+FyjEwzDUEHIFz1PIzKMh4X1YMxMa/MbXRSmsgzinA52BN40lJ7NRH8iD
	wVHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding;
	bh=gRsgYUHBudFevX5r+ua05+FIbiFDZGlVLL58B2hcd1o=;
	b=O7TYoFKFuVBRFlT7jatwAF5ugNsJ+8OtYcmR9sCga9hyyplwWAGdQkjre0IVHojq3W
	XaMqc2oamAZx7b3OTgbOuHeuYkkV1iZ8KdBpM7tUnKoelltZ8a1jr8EpIqaj3fsroqmp
	CoIuUPErD2yCcjTpxqXJcfITDUVVU1bRSWJOAe1zeNDx4ZBpYsnHYibj1WxBvn12xNuN
	LMZ8Dl6YgmamnrtYL0qvW6qy0guJnlPFjS9mN7fViDOrBEV0m7W/LgsWlq2+RQEt07ur
	6yeewSAU+SlMsqgOZCtSFHYTJuHVh2FTVhU8yBEt/hKB99JpSpcDf18B4gDCEfYlUljH
	3eFw==
X-Gm-Message-State: APjAAAXIXtklLiocYMdSmpQyaF3Q0tWJUdJexE839wNoAV5rwiHtpEMA
	rQYCN1Qi6S4LNn+UQUfEePc=
X-Google-Smtp-Source: APXvYqyKmkvsPrspmBKOl0A6u0vlQV0YuphNPeS/aAMwa16VA+4Fzu9P96NV0o/xdwT3YeAAohutnw==
X-Received: by 2002:a1c:3c04:: with SMTP id j4mr18088011wma.37.1565019469798; 
	Mon, 05 Aug 2019 08:37:49 -0700 (PDT)
Received: from tycho.fritz.box ([188.192.146.8])
	by smtp.gmail.com with ESMTPSA id
	z5sm60816364wmf.48.2019.08.05.08.37.48
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 05 Aug 2019 08:37:49 -0700 (PDT)
From: Zahari Doychev <zahari.doychev@linux.com>
To: netdev@vger.kernel.org
Date: Mon,  5 Aug 2019 17:37:39 +0200
Message-Id: <20190805153740.29627-1-zahari.doychev@linux.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: makita.toshiaki@lab.ntt.co.jp, jiri@resnulli.us,
	nikolay@cumulusnetworks.com, simon.horman@netronome.com,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	dsahern@gmail.com, xiyou.wangcong@gmail.com,
	johannes@sipsolutions.net, ast@plumgrid.com
Subject: [Bridge] [PATCH v2 0/1] Fix bridge mac_len handling
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

After the last discussion about the possible solution of the problem. I have
decided to resend the patches making the discussed corrections. It seems that
the patches are still not the complete solution as there still can be problem
handling skb->data pointing after the VLAN tag but I got the impression that
all agreed that the bridge code should be able to handle mac_len correctly.

Here again the description how to problem can be reproduce.

The Linux bridge does not correctly forward double vlan tagged packets added
using the tc act_vlan action. I am using a bridge with two netdevs and on one
of them a have the clsact qdisc with tc flower rule adding two vlan tags.

ip link add name br0 type bridge vlan_filtering 1
ip link set dev br0 up

ip link set dev net0 up
ip link set dev net0 master br0

ip link set dev net1 up
ip link set dev net1 master br0

bridge vlan add dev net0 vid 100 master
bridge vlan add dev br0 vid 100 self
bridge vlan add dev net1 vid 100 master

tc qdisc add dev net0 handle ffff: clsact
tc qdisc add dev net1 handle ffff: clsact

tc filter add dev net0 ingress pref 1 protocol all flower \
		  action vlan push id 10 pipe action vlan push id 100

tc filter add dev net0 egress pref 1 protocol 802.1q flower \
		  vlan_id 100 vlan_ethtype 802.1q cvlan_id 10 \
		  action vlan pop pipe action vlan pop

When using the setup above the packets coming on net0 get double tagged but
the MAC headers gets corrupted when the packets go out of net1. The second vlan
header is not considered in br_dev_queue_push_xmit. The skb data pointer is
decremented only by the ETH_HLEN length. This later causes the function
validate_xmit_vlan to insert the outer vlan tag behind the inner vlan tag. 
The inner vlan becomes in this way part of the source mac address.

The problem in the bridge forwarding is fixed by using the mac_len when using
skb_push before forwarding the packets which ensures that the skb->data is
set correctly on push/pull.

Changes from v1:

- reset mac_len in br_dev_xmit 

Zahari Doychev (1):
  net: bridge: use mac_len in bridge forwarding

 net/bridge/br_device.c  | 3 ++-
 net/bridge/br_forward.c | 4 ++--
 net/bridge/br_vlan.c    | 3 ++-
 3 files changed, 6 insertions(+), 4 deletions(-)

-- 
2.22.0

