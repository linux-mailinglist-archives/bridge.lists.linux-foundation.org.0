Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 539AF5252EE
	for <lists.bridge@lfdr.de>; Thu, 12 May 2022 18:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACBB14168F;
	Thu, 12 May 2022 16:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hqVvdDuhEi40; Thu, 12 May 2022 16:47:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 971DC415EC;
	Thu, 12 May 2022 16:47:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3E27DC007E;
	Thu, 12 May 2022 16:47:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4060FC002D
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 16:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2045982AB6
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 16:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ChU8ZUyNM6tG for <bridge@lists.linux-foundation.org>;
 Thu, 12 May 2022 16:47:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8D4F829B1
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 16:47:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C49C162014;
 Thu, 12 May 2022 16:47:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EB6DC34100;
 Thu, 12 May 2022 16:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652374065;
 bh=lNnph2yAG9EuWp4xn4hkmL7beGBLq1ZnZACZsxjp9KM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Nbj40Iz88D0V+BmUzUcGlmi2umj/JPseAGp8ve9p9adbnxhMIw5o5HKqqoIgzjAlC
 DeUV2ehaeFQOlKrd7fd7Y924wISPgj2/8F5tR6bUc4uWovrrSf9hBp82erK2Jc4pc3
 A4dvpcTJPE43CwXIJjA1f53t9Qmg/baB3Xz3eECBLToqkBjUwQtS+/U8lrFmzS9ZJF
 xFo9qPHnCW8oDT4cJt7i1K/uVJr3VfpJM1NVURE1DALzcdaqRWCOMKFmXZ2JhDLCCA
 jGdWnL/FQw+dFHr7np3Ga08IwoHGfZt8RyzjJwGfQHb8dVidzC4m5NOHQJ45+fOx4b
 IhinxXtkEOXFQ==
Date: Thu, 12 May 2022 09:47:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>
Message-ID: <20220512094743.79f36d81@kernel.org>
In-Reply-To: <c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
 <c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
 <c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 vladimir.oltean@nxp.com, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com
Subject: Re: [Bridge] [PATCH net-next v7 2/2] net: vxlan: Add extack support
 to vxlan_fdb_delete
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

On Thu, 12 May 2022 09:22:17 -0700 Roopa Prabhu wrote:
> On 5/12/22 02:55, Alaa Mohamed wrote:
> > This patch adds extack msg support to vxlan_fdb_delete and vxlan_fdb_parse.
> > extack is used to propagate meaningful error msgs to the user of vxlan
> > fdb netlink api
> >
> > Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>

Also the patches don't apply to net-next, again.
