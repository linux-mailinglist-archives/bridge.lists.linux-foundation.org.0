Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1994430919B
	for <lists.bridge@lfdr.de>; Sat, 30 Jan 2021 04:01:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9E2A62013C;
	Sat, 30 Jan 2021 03:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YfeFVsh3fo2B; Sat, 30 Jan 2021 03:01:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0255A2E163;
	Sat, 30 Jan 2021 03:01:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5A61C013A;
	Sat, 30 Jan 2021 03:01:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2477CC013A
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jan 2021 03:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DCBC72E155
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jan 2021 03:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9iCKc-PjYq8 for <bridge@lists.linux-foundation.org>;
 Sat, 30 Jan 2021 03:01:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0069F2013C
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jan 2021 03:01:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1F3E764D9F;
 Sat, 30 Jan 2021 03:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611975675;
 bh=1g7TFqM32r+X2G4XFMePCA3nPEQwqjwlXbzXGKcz2Fg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Fpstn8GumhB9aN2VYNzcfMHIETojhLD/lUsuuTb3UIhzrbqwoZIrnh14s4eqaFjZG
 oh3ragFnct6W0/owoHZBHl8UMx1haRVPyMSNWuV3w7bTkGJseMGTsipAS1lexGeY3z
 9j+AywEh1D2VFpQJdZSVTN7TctmGm379C7fb5Tq+0rZmIH0wGnw8nxX9BkbfTWkqw2
 E/2JsptAfTpqBqUD+Xiq1PEOKT/HEPNoIHZR8CvJZHEXuSuSTyW9q8hH4qzBbS3fpb
 t/dYSZwccpHCfjvzpxFaYikdcJpv5Gm6bvfR8AirRmvFJkZwJB0xnhnMVa+ZM+nyhf
 PPzTkGlGp4hPw==
Date: Fri, 29 Jan 2021 19:01:14 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: <rasmus.villemoes@prevas.dk>, <andrew@lunn.ch>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
Message-ID: <20210129190114.3f5b6b44@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210127205241.2864728-1-horatiu.vultur@microchip.com>
References: <20210127205241.2864728-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ivecera@redhat.com, jiri@resnulli.us, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [PATCH net-next v2 0/4] bridge: mrp: Extend
	br_mrp_switchdev_*
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, 27 Jan 2021 21:52:37 +0100 Horatiu Vultur wrote:
> This patch series extends MRP switchdev to allow the SW to have a better
> understanding if the HW can implement the MRP functionality or it needs
> to help the HW to run it. There are 3 cases:
> - when HW can't implement at all the functionality.
> - when HW can implement a part of the functionality but needs the SW
>   implement the rest. For example if it can't detect when it stops
>   receiving MRP Test frames but it can copy the MRP frames to CPU to
>   allow the SW to determine this.  Another example is generating the MRP
>   Test frames. If HW can't do that then the SW is used as backup.
> - when HW can implement completely the functionality.
> 
> So, initially the SW tries to offload the entire functionality in HW, if
> that fails it tries offload parts of the functionality in HW and use the
> SW as helper and if also this fails then MRP can't run on this HW.
> 
> v2:
>  - fix typos in comments and in commit messages
>  - remove some of the comments
>  - move repeated code in helper function
>  - fix issue when deleting a node when sw_backup was true

Folks who were involved in previous MRP conversations - does this look
good to you? Anyone planning to test?
