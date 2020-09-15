Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD3C26E216
	for <lists.bridge@lfdr.de>; Thu, 17 Sep 2020 19:19:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 932C987171;
	Thu, 17 Sep 2020 17:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hKEGgYyRNRyl; Thu, 17 Sep 2020 17:19:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 15E788705D;
	Thu, 17 Sep 2020 17:19:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EF0D1C0890;
	Thu, 17 Sep 2020 17:19:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 85A3CC0051
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 68F67870F2
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rO7UKH4tRi2z for <bridge@lists.linux-foundation.org>;
 Tue, 15 Sep 2020 08:54:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D3F30870E2
 for <bridge@lists.linux-foundation.org>; Tue, 15 Sep 2020 08:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1600160074; x=1631696074;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Q1K3ZnDAfToNz/8n8qN43CbiTyRRyydMCMCOaNUYtDM=;
 b=U0u4thy7JRsmb3F0y0S3PgUMBVcE0vs+eF8MDqPW3RQanUBvYl8com8/
 Imw/uKoOyYe8M/6SCC7LE3YjSqNAse06xFmEYUr03SiFoyxoIsxOKUuRY
 DSgl8cDN+1tSpXzMpUgeE/QtVA+GQxFTcM0Q/2VWsJhs2z7D/3xxGhaFV
 CzpcCPZGNgTQGj3JUq9oBbuqOjRTzkoy0BQyLk3Je7J3YyCjM0Jm99f3c
 sJOY28hYshVXUjyi/3Xir10qgabopEx+2OF/cVbHMgh9niOrR5GPOed/u
 xGvYYAYWFwU6TVkgvbUPr4UXlrGBX5cTRUfYjcITYYfc0s/lUPyjV7a0v A==;
IronPort-SDR: W4dS+NKoczb/uFgiJQpnct2/tpr4/ydR+fpvqKV8jvXK+2Ymmmlop6w95BVSPPCYnvtCdFNVgV
 wpgd9ezuttGbJq4JiPjhqyazOAwlLNuqr0EHSa5oo0hFspVP1oUT6FNCQ9bqJLzTrLRrVJoamB
 hMTrqWVme0yr0QLJFxnRSgL4x//S0Z/h9KEkt5euUDbx5++Xiv8QD4r2bBMCAB5HeFiyoKEzhf
 7M+V4nlnW1xe7zB3GU1ewFvBP8lu0NbDux7ZkrGI9GUYuzfDPO2HLDt2iy+X6HqjMYwI7jaBsJ
 z7k=
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="91839331"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Sep 2020 01:54:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 15 Sep 2020 01:54:12 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 15 Sep 2020 01:54:04 -0700
Date: Tue, 15 Sep 2020 08:51:37 +0000
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20200915085137.c7xfmk5bpjzniclp@soft-test08>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
 <20200904091527.669109-5-henrik.bjoernlund@microchip.com>
 <20200904080257.6b2a643f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200904080257.6b2a643f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailman-Approved-At: Thu, 17 Sep 2020 17:19:30 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH RFC 4/7] bridge: cfm: Kernel space
	implementation of CFM.
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for the review. Comments below.

The 09/04/2020 08:02, Jakub Kicinski wrote:
> 
> On Fri, 4 Sep 2020 09:15:24 +0000 Henrik Bjoernlund wrote:
> > +     rcu_read_lock();
> > +     b_port = rcu_dereference(mep->b_port);
> > +     if (!b_port)
> > +             return NULL;
> > +     skb = dev_alloc_skb(CFM_CCM_MAX_FRAME_LENGTH);
> > +     if (!skb)
> > +             return NULL;
> 
> net/bridge/br_cfm.c:171:23: warning: context imbalance in 'ccm_frame_build' - different lock contexts for basic block

I will assure that rcu_read_unlock() is called before any return.

-- 
/Henrik
