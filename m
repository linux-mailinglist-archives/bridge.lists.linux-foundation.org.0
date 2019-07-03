Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 358D15E890
	for <lists.bridge@lfdr.de>; Wed,  3 Jul 2019 18:16:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6D78E12D2;
	Wed,  3 Jul 2019 16:15:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F21BEFF1
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 14:52:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6B4A4836
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 14:52:15 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id g135so2529444wme.4
	for <bridge@lists.linux-foundation.org>;
	Wed, 03 Jul 2019 07:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=BM5k0kkio2R7Vcb1AP2k6RxRHMZpGAV0eFzOrb5l0VY=;
	b=CxGbbW632YVjM54WJhzdY/VDJPMZY+qNFwBjnmXzA6q5pYuSZPdNDkk9bqDC5qijPd
	IFllT808pft27PzZDzWHtSvheLToF0BNRPE2dcHuTwXGqajpo+B8wiD6hMMjNBfk94Fz
	jc9Lnrjg+F1val7zXWpuHLsC2yo2GWEdiZbFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=BM5k0kkio2R7Vcb1AP2k6RxRHMZpGAV0eFzOrb5l0VY=;
	b=c55bQ2qw1hmhVD38sCjvC6zHUgLAF6MDsbecZHm2hh3LfjWsnrWzjWwc/XBFt8bUF9
	UFv35N542kq+dCiY25RKaJ9yN3qxKXEbfNiRqunGd+Tt0s9kLcPnJ9QV1RvCPEvdltoZ
	/e5ZclYxnNQH1QgUi/x+w6yjpbVFS51JinSV+jXwzgbNaEkqkG+OAy/QZYqhtf/M+mo6
	pTmNn5Y1OnmngJ5EcQSbMxiZm/XQL/j6kqMy23/xCeDuc94j5wzyGe+8Bw02Odl/7YrX
	CKHihxM0izO16rKQNSX2vRrYoPNojvhYGNd0JefFGOt2czQjHqX667yKm6fOml/afPTX
	iwYg==
X-Gm-Message-State: APjAAAU5s7DiI901idoN7WTHyAGpmHaQBoKLslNw8DK2zK/5o1XikRvA
	WmJ4KAM2W5sTBv8qXsoCeYHrjYGJQ+1evA==
X-Google-Smtp-Source: APXvYqxgvTyefmeP/VQtfNazzq15hGTv2ttyRhceLrqEacViGeoUwQqdDOMFVJ/88nq3k3xG2Zr+GA==
X-Received: by 2002:a1c:7e14:: with SMTP id z20mr8115807wmc.83.1562165533742; 
	Wed, 03 Jul 2019 07:52:13 -0700 (PDT)
Received: from [192.168.51.243] ([78.128.78.220])
	by smtp.gmail.com with ESMTPSA id t63sm2410203wmt.6.2019.07.03.07.52.12
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jul 2019 07:52:13 -0700 (PDT)
To: Pablo Neira Ayuso <pablo@netfilter.org>, wenxu <wenxu@ucloud.cn>
References: <20190703124040.19279-1-pablo@netfilter.org>
	<ecb6d9e8-7923-07ba-8940-c69fc251f4c3@ucloud.cn>
	<20190703141507.mnhzqapu4iaan5d7@salvia>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <3df24a0e-fd51-2dee-8cd3-76daf2ea9de7@cumulusnetworks.com>
Date: Wed, 3 Jul 2019 17:52:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190703141507.mnhzqapu4iaan5d7@salvia>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
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

On 03/07/2019 17:15, Pablo Neira Ayuso wrote:
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
> 

Hi,
The plan sounds good to me. I also went over the patch and it looks good.
I think it'd be nice if we can get rid of the br_private.h include and
make nft_meta (or meta_bridge) use linux/if_bridge.h instead. Having
a clear distinction between what is supposed to be exported and what
remains internal would be great. I will help out with that.

Thanks,
 Nik

