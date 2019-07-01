Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C665C214
	for <lists.bridge@lfdr.de>; Mon,  1 Jul 2019 19:37:38 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9DC344B73;
	Mon,  1 Jul 2019 17:37:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C11E2666
	for <bridge@lists.linux-foundation.org>;
	Mon,  1 Jul 2019 17:37:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 76EB2782
	for <bridge@lists.linux-foundation.org>;
	Mon,  1 Jul 2019 17:37:27 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id x15so343308wmj.3
	for <bridge@lists.linux-foundation.org>;
	Mon, 01 Jul 2019 10:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=63K+V7RC2vFXJsYWP0qQm+hf7KLW6Yvys8FzAqp1hV0=;
	b=d7SN/ri4ncq140nGhnGuin/GXFsek7KVvv84NDaryU8/U4VgDvyPKo2nqI8peKK1Xq
	uFJIb3HHonNBnFyr4Qb+4HGbFYNSA3HYAoy44MOA8n4O5IS/NMvHO68/fh7UkwzoluTG
	uFB75AnSb7bC9SYTJRVOree1o1r6zvnncRk0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=63K+V7RC2vFXJsYWP0qQm+hf7KLW6Yvys8FzAqp1hV0=;
	b=uSInHQuGod2if+usUQrzV7SQq4qR1C7Wntt5Ou/Y1UYrOwPHVcHqp5WY54PIEbKBIa
	YV5n/oRQgm+7pSneH4lkPfu8TJeknOgzzi2K2FemLylW9FmAuv3nVZczsoJ0B6xzlAoZ
	qJEwyaM9yBsc6jZQUQ0VLHHz9U3+WCoEOtURUNzUfpCzpIeV0TUcAcFPa9fl/LZKV4b6
	8fHlgmXz0RtdwMgvQQaV/cFh1fpDgWhWqf2J6k1I3hofa8G6h+s9CzCfSJrb7JtC/PxJ
	2s6SPCBviDEiN8TR1wvPimWwQTbinkPb2uDJrjgJQq0cYMDj+JUJd69mJBjH3WVGDQqb
	5xwQ==
X-Gm-Message-State: APjAAAWksgBhnw7fMd0/NLOF6M6zTz78BT2yGa+j3gi6FCW15ABS9sRN
	9y+Sjmu/L+vWPypu7HeftchBRw==
X-Google-Smtp-Source: APXvYqwhkCGS5eFCqJyDU0FJvNh3og93iVXIQsl5IaXz4l9rNlEEQkIoyB4DFNL/aN3C7c6uVqfRdQ==
X-Received: by 2002:a1c:3b45:: with SMTP id i66mr289397wma.48.1562002646044;
	Mon, 01 Jul 2019 10:37:26 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	d201sm166052wmd.19.2019.07.01.10.37.24
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Jul 2019 10:37:25 -0700 (PDT)
To: Martin Weinelt <martin@linuxlounge.net>, bridge@lists.linux-foundation.org,
	Roopa Prabhu <roopa@cumulusnetworks.com>
References: <41ac3aa3-cbf7-1b7b-d847-1fb308334931@linuxlounge.net>
	<E0170D52-C181-4F0F-B5F8-F1801C2A8F5A@cumulusnetworks.com>
	<21ab085f-0f7f-88bc-b661-af74dd9eeea2@linuxlounge.net>
	<cc232ed3-9e02-ebb4-4901-9d617013abb8@cumulusnetworks.com>
	<3fcf8b05-e1ad-ac97-10bf-bd2b6354424c@linuxlounge.net>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <908e9e90-70cc-7bbe-f83f-0810c9ef3925@cumulusnetworks.com>
Date: Mon, 1 Jul 2019 20:37:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3fcf8b05-e1ad-ac97-10bf-bd2b6354424c@linuxlounge.net>
Content-Type: multipart/mixed; boundary="------------2BD0B973E35EF15FE7B0A560"
Content-Language: en-US
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org
Subject: Re: [Bridge] Use-after-free in br_multicast_rcv
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

This is a multi-part message in MIME format.
--------------2BD0B973E35EF15FE7B0A560
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi again,
On 01/07/2019 20:31, Martin Weinelt wrote:
> Hi Nik,
> 
> On 7/1/19 7:03 PM, Nikolay Aleksandrov wrote:
>> Hi Martin,
>>
>> On 01/07/2019 19:53, Martin Weinelt wrote:
>>> Hi Nik,
>>>
>>> more info below.
>>>
>>> On 6/29/19 3:11 PM, nikolay@cumulusnetworks.com wrote:
>>>> On 29 June 2019 14:54:44 EEST, Martin Weinelt <martin@linuxlounge.net> wrote:
>>>>> Hello,
>>>>>
>>>>> we've recently been experiencing memory leaks on our Linux-based
>>>>> routers,
>>>>> at least as far back as v4.19.16.
>>>>>
>>>>> After rebuilding with KASAN it found a use-after-free in 
>>>>> br_multicast_rcv which I could reproduce on v5.2.0-rc6. 
>>>>>
>>>>> Please find the KASAN report below, I'm anot sure what else to provide
>>>>> so
>>>>> feel free to ask.
>>>>>
>>>>> Best,
>>>>>  Martin
>>>>>
>>>>>
>>>>
>>>> Hi Martin, 
>>>> I'll look into this, are there any specific steps to reproduce it? 
>>>>
>>>> Thanks, 
>>>>    Nik
>>>>>  
>>> Each server is a KVM Guest and has 18 bridges with the same master/slave
>>> relationships:
>>>
>>>   bridge -> batman-adv -> {l2 tunnel, virtio device}
>>>
>>> Linus Lüssing from the batman-adv asked me to apply this patch to help
>>> debugging.
>>>
>>> v5.2-rc6-170-g728254541ebc with this patch yielded the following KASAN 
>>> report, not sure if the additional information at the end is a result of
>>> the added patch though.
>>>
>>> Best,
>>>   Martin
>>>
>>
>> I see a couple of issues that can cause out-of-bounds accesses in br_multicast.c
>> more specifically there're pskb_may_pull calls and accesses to stale skb pointers.
>> I've had these on my "to fix" list for some time now, will prepare, test the fixes and
>> send them for review. In a few minutes I'll send a test patch for you.
>> That being said, I thought you said you've been experiencing memory leaks, but below
>> reports are for out-of-bounds accesses, could you please clarify if you were
>> speaking about these or is there another issue as well ?
>> If you're experiencing memory leaks, are you sure they're related to the bridge ?
>> You could try kmemleak for those.
>>
>> Thank you,
>>  Nik
>>
> 
> we had been experiencing memory leaks on v4.19.37, thats why we started to turn on
> KASAN and kmemleak in the first place. This is when we found this use-after-free.
> 
> The memory leak exists, and is a separate issue. Apparently kmemleak does not work,
> I suspect the early log size is too small
> 
> root@gw02:~# echo scan > /sys/kernel/debug/kmemleak                                                                                                                                                                                 -bash: echo: write error: Device or resource busy
> 
> CONFIG_HAVE_DEBUG_KMEMLEAK=y
> CONFIG_DEBUG_KMEMLEAK=y
> CONFIG_DEBUG_KMEMLEAK_EARLY_LOG_SIZE=400
> # CONFIG_DEBUG_KMEMLEAK_TEST is not set
> # CONFIG_DEBUG_KMEMLEAK_DEFAULT_OFF is not set
> CONFIG_DEBUG_KMEMLEAK_AUTO_SCAN=y
> 
> I'll increase the early log size with the next build to try and get more information
> on the memory leak, I'll open a separate thread for that then.
> 
> Thanks,
>   Martin
> 

I see, thanks for clarifying this. So on the KASAN could you please try the attached patch ?
Also could you please run the br_multicast_rcv+xxx addresses through
linux/scripts/faddr2line for your kernel/bridge:
usage: faddr2line [--list] <object file> <func+offset> <func+offset>...

Thanks,
 Nik

--------------2BD0B973E35EF15FE7B0A560
Content-Type: text/x-patch;
 name="0001-net-bridge-mcast-fix-possible-uses-of-stale-pointers.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-net-bridge-mcast-fix-possible-uses-of-stale-pointers.pa";
 filename*1="tch"

From 5358f2ad1228967d5e8a2dc21e0025651726a3b8 Mon Sep 17 00:00:00 2001
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Mon, 1 Jul 2019 20:31:14 +0300
Subject: [PATCH TEST] net: bridge: mcast: fix possible uses of stale pointers

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index de22c8fbbb15..fbedef3fa930 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -917,6 +917,8 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 	len = skb_transport_offset(skb) + sizeof(*ih);
 
 	for (i = 0; i < num; i++) {
+		u16 nsrcs;
+
 		len += sizeof(*grec);
 		if (!ip_mc_may_pull(skb, len))
 			return -EINVAL;
@@ -924,8 +926,9 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		grec = (void *)(skb->data + len - sizeof(*grec));
 		group = grec->grec_mca;
 		type = grec->grec_type;
+		nsrcs = ntohs(grec->grec_nsrcs);
 
-		len += ntohs(grec->grec_nsrcs) * 4;
+		len += nsrcs * 4;
 		if (!ip_mc_may_pull(skb, len))
 			return -EINVAL;
 
@@ -946,7 +949,7 @@ static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
 		src = eth_hdr(skb)->h_source;
 		if ((type == IGMPV3_CHANGE_TO_INCLUDE ||
 		     type == IGMPV3_MODE_IS_INCLUDE) &&
-		    ntohs(grec->grec_nsrcs) == 0) {
+		    nsrcs == 0) {
 			br_ip4_multicast_leave_group(br, port, group, vid, src);
 		} else {
 			err = br_ip4_multicast_add_group(br, port, group, vid,
@@ -983,7 +986,8 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 	len = skb_transport_offset(skb) + sizeof(*icmp6h);
 
 	for (i = 0; i < num; i++) {
-		__be16 *nsrcs, _nsrcs;
+		__be16 *_nsrcs, __nsrcs;
+		u16 nsrcs;
 
 		nsrcs_offset = len + offsetof(struct mld2_grec, grec_nsrcs);
 
@@ -991,12 +995,13 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 		    nsrcs_offset + sizeof(_nsrcs))
 			return -EINVAL;
 
-		nsrcs = skb_header_pointer(skb, nsrcs_offset,
-					   sizeof(_nsrcs), &_nsrcs);
-		if (!nsrcs)
+		_nsrcs = skb_header_pointer(skb, nsrcs_offset,
+					   sizeof(_nsrcs), &__nsrcs);
+		if (!_nsrcs)
 			return -EINVAL;
 
-		grec_len = struct_size(grec, grec_src, ntohs(*nsrcs));
+		nsrcs = ntohs(*_nsrcs);
+		grec_len = struct_size(grec, grec_src, nsrcs);
 
 		if (!ipv6_mc_may_pull(skb, len + grec_len))
 			return -EINVAL;
@@ -1021,7 +1026,7 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
 		src = eth_hdr(skb)->h_source;
 		if ((grec->grec_type == MLD2_CHANGE_TO_INCLUDE ||
 		     grec->grec_type == MLD2_MODE_IS_INCLUDE) &&
-		    ntohs(*nsrcs) == 0) {
+		    nsrcs == 0) {
 			br_ip6_multicast_leave_group(br, port, &grec->grec_mca,
 						     vid, src);
 		} else {
@@ -1275,7 +1280,6 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 				  u16 vid)
 {
 	unsigned int transport_len = ipv6_transport_len(skb);
-	const struct ipv6hdr *ip6h = ipv6_hdr(skb);
 	struct mld_msg *mld;
 	struct net_bridge_mdb_entry *mp;
 	struct mld2_query *mld2q;
@@ -1319,7 +1323,7 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 
 	if (is_general_query) {
 		saddr.proto = htons(ETH_P_IPV6);
-		saddr.u.ip6 = ip6h->saddr;
+		saddr.u.ip6 = ipv6_hdr(skb)->saddr;
 
 		br_multicast_query_received(br, port, &br->ip6_other_query,
 					    &saddr, max_delay);
-- 
2.21.0


--------------2BD0B973E35EF15FE7B0A560--
