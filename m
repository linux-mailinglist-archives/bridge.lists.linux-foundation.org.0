Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD787DD20
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:00:47 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8E74E1885;
	Thu,  1 Aug 2019 13:59:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3DDA72C16
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 12:25:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DCDA37DB
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 12:25:38 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id g20so127546884ioc.12
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 05:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=s5yWI2xfBi7yZUvh5vbuUYKfiAIOr2+n9/J+pTBAvvA=;
	b=oNRi4RrqZcCHcv3ihpvxRh05FVUCJujtgcfihPqzEIhibrVSyvLxH6ou+KPX3QcJW1
	8odyqmb9Xy6OZW3Akl4mhb8QXyeta1TByczNxiawqeZqlsAEQgeNH4zWnRQNZjNaanng
	0uyuZIy+8zTVFFxa0Ya/KrP2BWiVnBI9uP6oyFln1SImZYqFXKVsPFuT21tgQZ7JxlFX
	Fs+CbA/+uEvCQ0ZUgz9IPY356ERlad9t/WiFeJ2j53Gucbi1JlQ9yIBQgH0c0Te24k7b
	EffDwc1jhPKoAalhRJA+XcovRIjMe2TsRZptfp0V8HA2/1B5SE8WZ8hszhzXBdu/7690
	DokQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=s5yWI2xfBi7yZUvh5vbuUYKfiAIOr2+n9/J+pTBAvvA=;
	b=UTa06W8XbhHVFhKIbK8vkFn0F7Ye0VHPn74vpqF4cCCO8vtfSH6KSUHqSVs3MEMmup
	2pfguMNrWaSNuinJTR6CCuqvSfgCMqC+kbNoxbHjBWFbwlJMZ1N3PLNw4G6GUNzOOP7r
	xavco8JkoJ3O1kKEJTgaz7D1xRxUsVofZv4rywqUjhJv66N4OplUMLHDYYB5cW9BHSCQ
	WM9D9ae4wo9krHrKwCR57q/nHEgBpXn1HXNCrEmZ1Qv6+z8BuLa+syxqNe/5R9ki9aHz
	ssVq6I1/my1bHQZqorraWtQTHh23dW9Ylr/3xQ9SiUXlE1Wzt8CBaIaw5jnLowra2xLZ
	QV1w==
X-Gm-Message-State: APjAAAVYU64rxnBZRDnT8hpBSQ2aICC24T/yjI1zj5e2aHK0vIE94dwO
	icxtGNw57BIYI8TmdOnOUw==
X-Google-Smtp-Source: APXvYqyQH9tqYauuovKG4HR22AWdKr93hT9a4O67gZNyhFbLW2ujv+hKs4GCYjdavvE1y4Ujue7gVA==
X-Received: by 2002:a6b:cd86:: with SMTP id
	d128mr106118586iog.234.1564489538291; 
	Tue, 30 Jul 2019 05:25:38 -0700 (PDT)
Received: from ip-172-31-35-247.us-east-2.compute.internal
	(ec2-52-15-165-154.us-east-2.compute.amazonaws.com. [52.15.165.154])
	by smtp.gmail.com with ESMTPSA id
	j23sm52454755ioo.6.2019.07.30.05.25.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jul 2019 05:25:37 -0700 (PDT)
From: Rundong Ge <rdong.ge@gmail.com>
To: davem@davemloft.net
Date: Tue, 30 Jul 2019 12:25:34 +0000
Message-Id: <20190730122534.30687-1-rdong.ge@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: rdong.ge@gmail.com, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	fw@strlen.de, linux-kernel@vger.kernel.org, kadlec@netfilter.org,
	nikolay@cumulusnetworks.com, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, kuznet@ms2.inr.ac.ru, pablo@netfilter.org
Subject: [Bridge] [PATCH] bridge:fragmented packets dropped by bridge
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

Given following setup:
-modprobe br_netfilter
-echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
-brctl addbr br0
-brctl addif br0 enp2s0
-brctl addif br0 enp3s0
-brctl addif br0 enp6s0
-ifconfig enp2s0 mtu 1300
-ifconfig enp3s0 mtu 1500
-ifconfig enp6s0 mtu 1500
-ifconfig br0 up

                 multi-port
mtu1500 - mtu1500|bridge|1500 - mtu1500
  A                  |            B
                   mtu1300

With netfilter defragmentation/conntrack enabled, fragmented
packets from A will be defragmented in prerouting, and refragmented
at postrouting.
But in this scenario the bridge found the frag_max_size(1500) is
larger than the dst mtu stored in the fake_rtable whitch is
always equal to the bridge's mtu 1300, then packets will be dopped.

This modifies ip_skb_dst_mtu to use the out dev's mtu instead
of bridge's mtu in bridge refragment.

Signed-off-by: Rundong Ge <rdong.ge@gmail.com>
---
 include/net/ip.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/net/ip.h b/include/net/ip.h
index 29d89de..0512de3 100644
--- a/include/net/ip.h
+++ b/include/net/ip.h
@@ -450,6 +450,8 @@ static inline unsigned int ip_dst_mtu_maybe_forward(const struct dst_entry *dst,
 static inline unsigned int ip_skb_dst_mtu(struct sock *sk,
 					  const struct sk_buff *skb)
 {
+	if ((skb_dst(skb)->flags & DST_FAKE_RTABLE) && skb->dev)
+		return min(skb->dev->mtu, IP_MAX_MTU);
 	if (!sk || !sk_fullsock(sk) || ip_sk_use_pmtu(sk)) {
 		bool forwarding = IPCB(skb)->flags & IPSKB_FORWARDED;
 
-- 
1.8.3.1

