Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1449E6D3F1
	for <lists.bridge@lfdr.de>; Thu, 18 Jul 2019 20:30:44 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5B2291C89;
	Thu, 18 Jul 2019 18:30:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C52BFF39
	for <bridge@lists.linux-foundation.org>;
	Thu, 18 Jul 2019 18:30:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (mail.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 15D07892
	for <bridge@lists.linux-foundation.org>;
	Thu, 18 Jul 2019 18:30:16 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 35B96B5AA2
	for <bridge@lists.linux-foundation.org>;
	Thu, 18 Jul 2019 20:30:14 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 266181150B9
	for <bridge@lists.linux-foundation.org>;
	Thu, 18 Jul 2019 20:30:14 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 138EADA708; Thu, 18 Jul 2019 20:30:14 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 7281C202D2;
	Thu, 18 Jul 2019 20:30:11 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Thu, 18 Jul 2019 20:30:11 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 49BF44265A31;
	Thu, 18 Jul 2019 20:30:11 +0200 (CEST)
Date: Thu, 18 Jul 2019 20:30:10 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <20190718183010.s243aiunyycpz3np@salvia>
References: <20190709070126.29972-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190709070126.29972-1-yuehaibing@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: wenxu@ucloud.cn, nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	fw@strlen.de, linux-kernel@vger.kernel.org, kadlec@netfilter.org,
	coreteam@netfilter.org, netfilter-devel@vger.kernel.org,
	davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] netfilter: nft_meta: Fix build error
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

On Tue, Jul 09, 2019 at 03:01:26PM +0800, YueHaibing wrote:
> If NFT_BRIDGE_META is y and NF_TABLES is m, building fails:
> 
> net/bridge/netfilter/nft_meta_bridge.o: In function `nft_meta_bridge_get_init':
> nft_meta_bridge.c:(.text+0xd0): undefined reference to `nft_parse_register'
> nft_meta_bridge.c:(.text+0xec): undefined reference to `nft_validate_register_store'

I took this one from Arnd instead:

https://patchwork.ozlabs.org/patch/1130262/

Thanks.
