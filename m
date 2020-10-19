Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A399A292B53
	for <lists.bridge@lfdr.de>; Mon, 19 Oct 2020 18:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2E5787065;
	Mon, 19 Oct 2020 16:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I-2AdXJ2nosz; Mon, 19 Oct 2020 16:21:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 813C787058;
	Mon, 19 Oct 2020 16:21:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5D954C0051;
	Mon, 19 Oct 2020 16:21:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 62877C0051
 for <bridge@lists.linux-foundation.org>; Mon, 19 Oct 2020 16:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4B79D87048
 for <bridge@lists.linux-foundation.org>; Mon, 19 Oct 2020 16:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YNG5mY70r9Om for <bridge@lists.linux-foundation.org>;
 Mon, 19 Oct 2020 16:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CF6FD87045
 for <bridge@lists.linux-foundation.org>; Mon, 19 Oct 2020 16:21:47 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9230122276;
 Mon, 19 Oct 2020 16:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603124507;
 bh=LBnNygCqE7uMUmgPFZOhgtlQx9yMmKUGgGfck+lQbM0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1fQRPzRpMj2u3NN+KJswolxRuRhv3qRdedeyMtEqakQ3nnD+iM0txfAYnoqtOgV8j
 aEOJFZzeqA6LvMYJweEeqUBM7uJlYpsd80up4YrZxTc2iQfSGYvd4ye8c0Z5HX/+Me
 9VxrybdEsMjQAijUzPD1nAb/cfIiMU61F3IHTAOY=
Date: Mon, 19 Oct 2020 09:21:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201019092143.258cb256@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201019085104.2hkz2za2o2juliab@soft-test08>
References: <20201015115418.2711454-1-henrik.bjoernlund@microchip.com>
 <20201015115418.2711454-8-henrik.bjoernlund@microchip.com>
 <20201015103431.25d66c8b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20201019085104.2hkz2za2o2juliab@soft-test08>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v6 07/10] bridge: cfm: Netlink SET
 configuration Interface.
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

On Mon, 19 Oct 2020 08:51:04 +0000 Henrik Bjoernlund wrote:
> Thank you for the review. Comments below.
> 
> The 10/15/2020 10:34, Jakub Kicinski wrote:
> > 
> > On Thu, 15 Oct 2020 11:54:15 +0000 Henrik Bjoernlund wrote:  
> > > +     [IFLA_BRIDGE_CFM_MEP_CONFIG_MDLEVEL]     = {
> > > +     .type = NLA_U32, .validation_type = NLA_VALIDATE_MAX, .max = 7 },  
> > 
> >         NLA_POLICY_MAX(NLA_U32, 7)  
> 
> I will change as requested.
> 
> > 
> > Also why did you keep the validation in the code in patch 4?  
> 
> In patch 4 there is no CFM NETLINK so I desided to keep the validation in the
> code until NETLINK was added that is now doing the check.
> I this a problem?

Nothing calls those functions until patch 7, so there's no need for
that code to be added.
