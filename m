Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 940C05E89F
	for <lists.bridge@lfdr.de>; Wed,  3 Jul 2019 18:18:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F397C13A3;
	Wed,  3 Jul 2019 16:15:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E538110C
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 15:00:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m9784.mail.qiye.163.com (m9784.mail.qiye.163.com
	[220.181.97.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CE0D384F
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 15:00:05 +0000 (UTC)
Received: from [192.168.1.5] (unknown [116.234.0.230])
	by m9784.mail.qiye.163.com (Hmail) with ESMTPA id A7FB24186E;
	Wed,  3 Jul 2019 22:59:58 +0800 (CST)
To: Pablo Neira Ayuso <pablo@netfilter.org>
References: <20190703124040.19279-1-pablo@netfilter.org>
	<ecb6d9e8-7923-07ba-8940-c69fc251f4c3@ucloud.cn>
	<20190703141507.mnhzqapu4iaan5d7@salvia>
From: wenxu <wenxu@ucloud.cn>
Message-ID: <4f3561be-adec-bda4-0e4f-d23ed82acf0f@ucloud.cn>
Date: Wed, 3 Jul 2019 22:59:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190703141507.mnhzqapu4iaan5d7@salvia>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZVkpVT0xCS0tLS0JKTk5JTEhZV1koWU
	FJQjdXWS1ZQUlXWQkOFx4IWUFZNTQpNjo3JCkuNz5ZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ok06Iio4Ezg3GAlDNzc#LSwN
	IywaCiJVSlVKTk1JSk1OQkJDQk1CVTMWGhIXVQweFQMOOw4YFxQOH1UYFUVZV1kSC1lBWUpKTVVJ
	SE9VS1VJSEtZV1kIAVlBSUpMTzcG
X-HM-Tid: 0a6bb859752e2086kuqya7fb24186e
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: nikolay@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH] netfilter: nft_meta: fix bridge port vlan ID
	selector
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

Agree with you, After add the rcu patch I will resent the series fo nft_meta_bridge!.

在 2019/7/3 22:15, Pablo Neira Ayuso 写道:
> Hi,
>
> I'm planning to revert from nf-next
>
>         da4f10a4265b netfilter: nft_meta: add NFT_META_BRI_PVID support
>
> because:
>
> * Nikolay wants us to use the helpers, however, through the existing
>   approach this creates a dependency between nft_meta and the bridge
>   module. I think I suggested this already, but it seems there is a
>   need for nft_meta_bridge, otherwise nft_meta pulls in the bridge
>   modules as a dependency.
>
> * NFT_META_BRI_PVID needs to be rename to NFT_META_BRI_IIFPVID.
>
> * We need new helpers to access this information from rcu path, I'm
>   attaching a patch for such helper for review.
>
> so we take the time to get this right :-)
