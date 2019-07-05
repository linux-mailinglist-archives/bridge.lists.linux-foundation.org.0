Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3CD60227
	for <lists.bridge@lfdr.de>; Fri,  5 Jul 2019 10:28:42 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4A37E1033;
	Fri,  5 Jul 2019 08:28:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0137D101E
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:28:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7D61670D
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 08:28:32 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 207so7947781wma.1
	for <bridge@lists.linux-foundation.org>;
	Fri, 05 Jul 2019 01:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=hZ+xm6CrUEywAVzXTfhFxGsIwIJgpN0+1W8s2x/bags=;
	b=c3IzIeVMeule+KQO+Y5hOKFEAcp51mU3jBwWgfNIszd5EwFwOzPrcwrBiO0yh4hMVg
	IR0QIQ96MLJHjrDefnKjJTbRIPIm6dsiiPNS+lfblbTO6vE3CGL2B/FuDwPrpHSF0P1J
	7mbU1JuBtnp1e3PXHrUqqkSabTQ0/5JwR9BZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=hZ+xm6CrUEywAVzXTfhFxGsIwIJgpN0+1W8s2x/bags=;
	b=LhMgIMJdNWosbkCxUh2Hwu7fnjtsYwsQ1w1+bG3qPcG6r1pNIKQr8P/9I+g9l22LK+
	2gDZ4IySt1YiBQhpIMOmpgZxvoIM0IgF7ieyP9MdmDFIGZ+x1tPqZyZ5RVNFMRDIdT4+
	fvDLzZWawZGLuEWpb5psQfMebUZwsfA9viDFS6Krgos44/djvs96HmzNrtwx+9YU3mgT
	WvwsabP6JyNF5hvPlgp40l0IAOiMdjZklas2+zoZq48MLcuv+db5Y0QSKY2W97r1/cwp
	jwH2OedXUvCss5+J4AbZsRszoqvplDV/yW1j1WkEiEEXdWnpyuu5aXcXUArGcAUL5Zic
	Bc/A==
X-Gm-Message-State: APjAAAVCDnvHGiuJHF59uhEypYgI7xK91xcC4neBKJvAnZH2OTdpVvuQ
	B702RnDDGlEPx+mepEy5uYdxFMb/T8ECCA==
X-Google-Smtp-Source: APXvYqxzDAEN+dnlzeXr4qqgdU+mY/XR5GFfju144HdaPPYRNbmXzcUPePKSquXotxTDowFoKAz+kA==
X-Received: by 2002:a1c:eb0a:: with SMTP id j10mr2429839wmh.1.1562315310906;
	Fri, 05 Jul 2019 01:28:30 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id e7sm7594574wmd.0.2019.07.05.01.28.29
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jul 2019 01:28:30 -0700 (PDT)
To: wenxu@ucloud.cn, pablo@netfilter.org
References: <1562224955-3979-1-git-send-email-wenxu@ucloud.cn>
	<1562224955-3979-6-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <89cf54d6-c36f-d59b-a414-5829aebd4552@cumulusnetworks.com>
Date: Fri, 5 Jul 2019 11:28:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562224955-3979-6-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 6/7 nf-next] netfilter: nft_meta_bridge: Add
 NFT_META_BRI_IIFVPROTO support
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

On 04/07/2019 10:22, wenxu@ucloud.cn wrote:
> From: wenxu <wenxu@ucloud.cn>
> 
> This patch provide a meta to get the bridge vlan proto
> 
> nft add rule bridge firewall zones counter meta br_vlan_proto 0x8100
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  include/uapi/linux/netfilter/nf_tables.h |  2 ++
>  net/bridge/netfilter/nft_meta_bridge.c   | 12 ++++++++++++
>  2 files changed, 14 insertions(+)
> 


Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

