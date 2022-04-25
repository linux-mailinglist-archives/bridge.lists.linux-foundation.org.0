Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BEB50E4B8
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 17:48:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CD3C4109E;
	Mon, 25 Apr 2022 15:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IUcFMg9IWNve; Mon, 25 Apr 2022 15:48:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C83B041551;
	Mon, 25 Apr 2022 15:48:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6D263C007C;
	Mon, 25 Apr 2022 15:48:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 40793C002D
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 15:48:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18F01823AB
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 15:48:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XvTREoY1ukdQ for <bridge@lists.linux-foundation.org>;
 Mon, 25 Apr 2022 15:48:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 26F6381B53
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 15:48:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2D44A61021;
 Mon, 25 Apr 2022 15:48:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8EF6C385A4;
 Mon, 25 Apr 2022 15:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650901711;
 bh=/t9m4/CeRlKdtuZXaz3TIf1SxEIJdA7erFumgZsS0uw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eOh7UZUkEZo/3ZbQ3PFG7Sonks6El6PeCIN27QpESDKgQAErhvEaXm5KHbAphkzpI
 DbS3z0A806wbIW0q73FkzHUMYhjAKBeCDh22sXJeY2YzhqKHBIkrAOTHC9v2TOudcQ
 cnwD6Y+fV1mnE5tfBuHuBckGxp0n4CdDkY99FAwiw/YJLCMLdSsUKXPVdUb6YxF/MJ
 WtdvWJVvQhKG92F8KUwLIgbkDI6QRXTjwKXys/e3UTkxJ6wwqrn8LRrY7HQmI3at9V
 N4YKmmmQD26s3s3ouZxl4FixIONGLzDT6vjUa0tao1QuHX5QadQY8M9RZKdf+Qr63O
 8rWNcE/MfKKyQ==
Date: Mon, 25 Apr 2022 08:48:29 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <20220425084829.4b446748@kernel.org>
In-Reply-To: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 vladimir.oltean@nxp.com, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, roopa@nvidia.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com
Subject: Re: [Bridge] [PATCH net-next v4 0/2] propagate extack to
	vxlan_fdb_delete
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

On Mon, 25 Apr 2022 16:25:05 +0200 Alaa Mohamed wrote:
> In order to propagate extack to vxlan_fdb_delete and vxlan_fdb_parse,
> add extack to .ndo_fdb_del and edit all fdb del handelers

Your patches do not apply cleanly to net-next/master. Please rebase and
repost. Please wait 24h between postings to allow additional feedback
to come in.
