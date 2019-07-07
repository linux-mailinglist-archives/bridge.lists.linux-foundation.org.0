Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B4467D99
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:01:23 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 889AB1701;
	Sun, 14 Jul 2019 06:00:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4A43B1E32
	for <bridge@lists.linux-foundation.org>;
	Sun,  7 Jul 2019 10:13:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56CE2826
	for <bridge@lists.linux-foundation.org>;
	Sun,  7 Jul 2019 10:13:51 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id l2so6310965wmg.0
	for <bridge@lists.linux-foundation.org>;
	Sun, 07 Jul 2019 03:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:from:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=TMGrYoCKbz9Eq4MPF1hFS5D+cdg65WHk7TtzBcNDAnk=;
	b=OeNOwE6LPLyelBtShMPRHIvJf7b7BCkt3Q18OXI0lNznYSMw/yUr1zoB1V2rfUm6jW
	2GBLmtvfhwqpWPV6omTMvAsTkVxOlfc8ItFI9pg3OAlRkQemhoCqvuU4SI3FJG+elOir
	bor+u81qw7sTolmI243LOaMJFj7Y1/nHQ3XhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=TMGrYoCKbz9Eq4MPF1hFS5D+cdg65WHk7TtzBcNDAnk=;
	b=Li4rqWZR6v2bdwgN50TmT36kBFd5jaNoVGciZpuQvnGipKsAXycMmRU0u3n37AqRE8
	X64UO4+lRgTTqiG6IarYgNx3HO82CGa22tBpwpxIcfaP+iTLXiqJLU5P0HdjERiSQSC6
	2IalwonmO+qreij9/Fhe5l8i+2Ymgl446M7stYxkxH1s92rFFXxYeUON1p6CwiIwNhYi
	OQ//ndh46tOxWz+n3WuqpprcvfEmuAN1516NgyFx39MK8LguqygeLqkuwT3VCqY3pX66
	/f5aS+FJMe7CJCKKl6Ati4Rh+LIdc44ocwbr1IJbNqeYBr/X3ubuiq0PBnofTIxq4jor
	0tAA==
X-Gm-Message-State: APjAAAUzBCdx+zg7hOwZcmCKP2uNM2yklxwbo6glq2N1L154t2dXJy5D
	RiAk/A/9FTRm8CmLSdQvf9ral4Ffo+Y=
X-Google-Smtp-Source: APXvYqwR/wSBji61obO3cLaYNGMn1Lf6epXv+id4187lj056CznbRq1+IQgQPjXpbXCPoCFyVzcXQQ==
X-Received: by 2002:a1c:a101:: with SMTP id k1mr12236107wme.98.1562494429663; 
	Sun, 07 Jul 2019 03:13:49 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	r16sm38340729wrr.42.2019.07.07.03.13.48
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sun, 07 Jul 2019 03:13:48 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: wenxu <wenxu@ucloud.cn>, pablo@netfilter.org
References: <1562332598-17415-1-git-send-email-wenxu@ucloud.cn>
	<1562332598-17415-7-git-send-email-wenxu@ucloud.cn>
	<caaaa242-6bb8-9d5e-af66-a0cd6592f81d@cumulusnetworks.com>
	<83e9506d-8888-f841-f16c-0d038e52b39e@ucloud.cn>
	<fd7c6e20-8ecb-b125-fe34-0ee224db300a@cumulusnetworks.com>
Message-ID: <43dc9579-0d39-ca7b-a602-bfe0142478b8@cumulusnetworks.com>
Date: Sun, 7 Jul 2019 13:13:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <fd7c6e20-8ecb-b125-fe34-0ee224db300a@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH nf-next v2] netfilter:nft_meta: add
	NFT_META_VLAN support
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

On 07/07/2019 13:12, Nikolay Aleksandrov wrote:
> On 06/07/2019 17:29, wenxu wrote:
>>
>> 在 2019/7/6 20:02, Nikolay Aleksandrov 写道:
>>> On 05/07/2019 16:16, wenxu@ucloud.cn wrote:
>>>> From: wenxu <wenxu@ucloud.cn>
>>>>
>>>> This patch provide a meta vlan to set the vlan tag of the packet.
>>>>
>>>> for q-in-q outer vlan id 20:
>>>> meta vlan set 0x88a8:20
>>>>
>>>> set the default 0x8100 vlan type with vlan id 20
>>>> meta vlan set 20
>>>>
>>>> Signed-off-by: wenxu <wenxu@ucloud.cn>
>>>> ---
>>>>  include/net/netfilter/nft_meta.h         |  5 ++++-
>>>>  include/uapi/linux/netfilter/nf_tables.h |  4 ++++
>>>>  net/netfilter/nft_meta.c                 | 25 +++++++++++++++++++++++++
>>>>  3 files changed, 33 insertions(+), 1 deletion(-)
>>>>
>>> The patch looks fine, just a note: you'll only be able to work with the
>>> outer tag, so guessing to achieve a double-tagged frame you'll have to
>>> add another NFT_META_VLAN_INNER(?) and will have to organize them one
>>> after another.
>>
>> yes, It's just set/mangle the meta vlan data. 
>> I think it's a good idear for stacked tagged with NFT_META_VLAN_INNER, in 
>> this case it should check the the proto of vlan tag already on packet
>> There are three case:
>> 1. packet already contain a vlan header with proto 0x88a8, it should push the inner vlan tag
>> 2. there is no outer vlan tag, maybe we should add a inner 0x8100 tag 
>> and outer 0x88a8 tag?
>> 3.  packet already contain a vlan tag with proto 0x8100, push the vlan tag and add outer 0x88a8 tag ?
>>
> 
> I'm more inclined to make it simpler, i.e. always push inner vlan. That way you can arrange them
> anyway you like, also skb_vlan_push() already takes care of all that. It'll push the vlan
> if hwaccel is present or make it hwaccel if it isn't.
> 
> In fact I'd suggest using skb_vlan_push(), so you don't need another NFT_META_VLAN_INNER,
> this one can be re-used. If you chain 2 of these you'll get properly double-tagged frame.
> 

You just need to be careful because skb_vlan_push expects skb->data to be at the mac header.

