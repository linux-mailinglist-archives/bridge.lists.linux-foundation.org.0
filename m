Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0EC30CC2B
	for <lists.bridge@lfdr.de>; Tue,  2 Feb 2021 20:50:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDE0785F72;
	Tue,  2 Feb 2021 19:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i21WFDUyAoz5; Tue,  2 Feb 2021 19:50:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE5C485F69;
	Tue,  2 Feb 2021 19:50:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CE713C1DA8;
	Tue,  2 Feb 2021 19:50:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87CA6C013A
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 19:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E76C85F67
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 19:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WRm_7PkBk9QC for <bridge@lists.linux-foundation.org>;
 Tue,  2 Feb 2021 19:50:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5213485F60
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 19:50:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 76CB464E43;
 Tue,  2 Feb 2021 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612295433;
 bh=/jebZP6tgM1BgzsuzazAlaJBzv6xqKN0Lbg6lsAaKDY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Cs7ihMFc3JyRXVrrWtZZ/cVFGe+sXlhMDew6LwyD1Es1XRUwG2s6Syeb3aZ47biL0
 zbP+0dV1DBD5eOkfQZSSGIUck/5einjE8A2kPnHuWWOchPVy/DZ9G4OckfI7ZcW5N1
 Ft2st+jNHIo5UDS2zqqOzCihkv3Q3fghbsz0JIAq0sArKl+v4aSEpCiM4AvWw5e3bE
 7IIJ7YsYpn2NNurd9dT2rgz5rX89l93qyNoauUW0sIRXxPaMUAAJJPipNPWoSAKfUV
 BarBSVsVQGqXnMwjqNHuvkdW+9ooOivsYPlKGsyMkSKeOOozK0OIOPztvh+aZ24+7R
 UmjmkFbyELzAw==
Date: Tue, 2 Feb 2021 11:50:32 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Message-ID: <20210202115032.6affffdc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <9143d15f-c41d-f0ab-7be0-32d797820384@prevas.dk>
References: <20210127205241.2864728-1-horatiu.vultur@microchip.com>
 <20210129190114.3f5b6b44@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <9143d15f-c41d-f0ab-7be0-32d797820384@prevas.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 Vladimir Oltean <vladimir.oltean@nxp.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Horatiu Vultur <horatiu.vultur@microchip.com>,
 netdev@vger.kernel.org, nikolay@nvidia.com, roopa@nvidia.com,
 davem@davemloft.net
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

On Tue, 2 Feb 2021 08:40:02 +0100 Rasmus Villemoes wrote:
> On 30/01/2021 04.01, Jakub Kicinski wrote:
> > On Wed, 27 Jan 2021 21:52:37 +0100 Horatiu Vultur wrote:  
> >> This patch series extends MRP switchdev to allow the SW to have a better
> >> understanding if the HW can implement the MRP functionality or it needs
> >> to help the HW to run it. There are 3 cases:  
> 
> >> v2:
> >>  - fix typos in comments and in commit messages
> >>  - remove some of the comments
> >>  - move repeated code in helper function
> >>  - fix issue when deleting a node when sw_backup was true  
> > 
> > Folks who were involved in previous MRP conversations - does this look
> > good to you? Anyone planning to test?
> 
> I am planning to test these, but it's unlikely I'll get around to it
> this week unfortunately.

Horatiu are you okay with deferring the series until Rasmus validates?
Given none of this HW is upstream now (AFAIU) this is an awkward set 
to handle. Having a confirmation from Rasmus would make us a little bit
more comfortable.
