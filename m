Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E309D4C8
	for <lists.bridge@lfdr.de>; Mon, 26 Aug 2019 19:15:05 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5EDB01C02;
	Mon, 26 Aug 2019 17:13:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B354FCE5
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 08:09:25 +0000 (UTC)
X-Greylist: delayed 00:09:50 by SQLgrey-1.7.6
Received: from a3.inai.de (a3.inai.de [88.198.85.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4EA238A2
	for <bridge@lists.linux-foundation.org>;
	Mon, 26 Aug 2019 08:09:25 +0000 (UTC)
Received: by a3.inai.de (Postfix, from userid 25121)
	id 80EC73BB696A; Mon, 26 Aug 2019 09:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by a3.inai.de (Postfix) with ESMTP id 7FE983BB6EEC;
	Mon, 26 Aug 2019 09:59:33 +0200 (CEST)
Date: Mon, 26 Aug 2019 09:59:33 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: Florian Westphal <fw@strlen.de>
In-Reply-To: <20190730123542.zrsrfvcy7t2n3d4g@breakpoint.cc>
Message-ID: <nycvar.YFH.7.76.1908260955400.22383@n3.vanv.qr>
References: <20190730122534.30687-1-rdong.ge@gmail.com>
	<20190730123542.zrsrfvcy7t2n3d4g@breakpoint.cc>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Rundong Ge <rdong.ge@gmail.com>, yoshfuji@linux-ipv6.org,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	kadlec@netfilter.org, nikolay@cumulusnetworks.com,
	coreteam@netfilter.org, netfilter-devel@vger.kernel.org,
	kuznet@ms2.inr.ac.ru, davem@davemloft.net, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH] bridge:fragmented packets dropped by bridge
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


On Tuesday 2019-07-30 14:35, Florian Westphal wrote:
>Rundong Ge <rdong.ge@gmail.com> wrote:
>> Given following setup:
>> -modprobe br_netfilter
>> -echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
>> -brctl addbr br0
>> -brctl addif br0 enp2s0
>> -brctl addif br0 enp3s0
>> -brctl addif br0 enp6s0
>> -ifconfig enp2s0 mtu 1300
>> -ifconfig enp3s0 mtu 1500
>> -ifconfig enp6s0 mtu 1500
>> -ifconfig br0 up
>> 
>>                  multi-port
>> mtu1500 - mtu1500|bridge|1500 - mtu1500
>>   A                  |            B
>>                    mtu1300
>
>How can a bridge forward a frame from A/B to mtu1300?

There might be a misunderstanding here judging from the shortness of this
thread.

I understood it such that the bridge ports (eth0,eth1) have MTU 1500, yet br0
(in essence the third bridge port if you so wish) itself has MTU 1300.

Therefore, frame forwarding from eth0 to eth1 should succeed, since the
1300-byte MTU is only relevant if the bridge decides the packet needs to be
locally delivered.
