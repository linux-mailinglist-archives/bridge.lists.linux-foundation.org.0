Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D28A67DBC
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:09:12 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 46013F0A;
	Sun, 14 Jul 2019 06:05:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 549811C6B
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 14:29:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9784.mail.qiye.163.com (m9784.mail.qiye.163.com
	[220.181.97.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 731E94C3
	for <bridge@lists.linux-foundation.org>;
	Sat,  6 Jul 2019 14:29:28 +0000 (UTC)
Received: from [192.168.1.3] (unknown [58.37.149.201])
	by m9784.mail.qiye.163.com (Hmail) with ESMTPA id 2F1AB416E5;
	Sat,  6 Jul 2019 22:29:26 +0800 (CST)
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, pablo@netfilter.org
References: <1562332598-17415-1-git-send-email-wenxu@ucloud.cn>
	<1562332598-17415-7-git-send-email-wenxu@ucloud.cn>
	<caaaa242-6bb8-9d5e-af66-a0cd6592f81d@cumulusnetworks.com>
From: wenxu <wenxu@ucloud.cn>
Message-ID: <83e9506d-8888-f841-f16c-0d038e52b39e@ucloud.cn>
Date: Sat, 6 Jul 2019 22:29:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <caaaa242-6bb8-9d5e-af66-a0cd6592f81d@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZVklVS05DS0tLSElNSk5NTUlZV1koWU
	FJQjdXWS1ZQUlXWQkOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kxg6FBw6Kjg0Mg89LxY1VkhI
	FQ4wCkNVSlVKTk1JT0lISE1NSENDVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWU5DVUhM
	VUpPQlVJS0pZV1kIAVlBSUNOSzcG
X-HM-Tid: 0a6bc7b092b52086kuqy2f1ab416e5
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
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


在 2019/7/6 20:02, Nikolay Aleksandrov 写道:
> On 05/07/2019 16:16, wenxu@ucloud.cn wrote:
>> From: wenxu <wenxu@ucloud.cn>
>>
>> This patch provide a meta vlan to set the vlan tag of the packet.
>>
>> for q-in-q outer vlan id 20:
>> meta vlan set 0x88a8:20
>>
>> set the default 0x8100 vlan type with vlan id 20
>> meta vlan set 20
>>
>> Signed-off-by: wenxu <wenxu@ucloud.cn>
>> ---
>>  include/net/netfilter/nft_meta.h         |  5 ++++-
>>  include/uapi/linux/netfilter/nf_tables.h |  4 ++++
>>  net/netfilter/nft_meta.c                 | 25 +++++++++++++++++++++++++
>>  3 files changed, 33 insertions(+), 1 deletion(-)
>>
> The patch looks fine, just a note: you'll only be able to work with the
> outer tag, so guessing to achieve a double-tagged frame you'll have to
> add another NFT_META_VLAN_INNER(?) and will have to organize them one
> after another.

yes, It's just set/mangle the meta vlan data. 
I think it's a good idear for stacked tagged with NFT_META_VLAN_INNER, in 
this case it should check the the proto of vlan tag already on packet
There are three case:
1. packet already contain a vlan header with proto 0x88a8, it should push the inner vlan tag
2. there is no outer vlan tag, maybe we should add a inner 0x8100 tag 
and outer 0x88a8 tag?
3.  packet already contain a vlan tag with proto 0x8100, push the vlan tag and add outer 0x88a8 tag ?

>
>
>
