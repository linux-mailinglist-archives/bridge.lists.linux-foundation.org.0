Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C19020F92C
	for <lists.bridge@lfdr.de>; Tue, 30 Jun 2020 18:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA12E87315;
	Tue, 30 Jun 2020 16:12:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X0C9aTY5IVz6; Tue, 30 Jun 2020 16:12:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B66C386AB2;
	Tue, 30 Jun 2020 16:12:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 968FFC016E;
	Tue, 30 Jun 2020 16:12:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 695ABC016E
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 16:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5811C8863B
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 16:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhUlDNEotpLC for <bridge@lists.linux-foundation.org>;
 Tue, 30 Jun 2020 16:12:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47BB2885ED
 for <bridge@lists.linux-foundation.org>; Tue, 30 Jun 2020 16:12:45 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3C77206A1;
 Tue, 30 Jun 2020 16:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593533565;
 bh=owmaLgZhLsBtFwWqdKpAtQq7cNhD5zxKybF7zSfyAVs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PxPvwaOJV4DgQE5vXhGqjfatDncv7xf5K7I9Ksimy5Dnifhpbmm0NVAim0a1Jp4VN
 rnNJRp5a3jN0PZ1fA4MBafFGAwEvS9zD0i8ee589axHp9si4zwB3lsT8JrTx9LQINI
 kNZT28DRdy7g3RhnVh2thCmYHJ0gXPQRcevWOKsM=
Date: Tue, 30 Jun 2020 09:12:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200630091243.124869e2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200630134424.4114086-3-horatiu.vultur@microchip.com>
References: <20200630134424.4114086-1-horatiu.vultur@microchip.com>
 <20200630134424.4114086-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, jiri@mellanox.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 2/3] bridge: mrp: Add br_mrp_fill_info
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

On Tue, 30 Jun 2020 15:44:23 +0200 Horatiu Vultur wrote:
> Add the function br_mrp_fill_info which populates the MRP attributes
> regarding the status of each MRP instance.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

This adds warnings when built with W=1 C=1:

net/bridge/br_mrp_netlink.c:316:9: warning: dereference of noderef expression
net/bridge/br_mrp_netlink.c:325:36: warning: dereference of noderef expression
net/bridge/br_mrp_netlink.c:328:36: warning: dereference of noderef expression
net/bridge/br_mrp_netlink.c:316:9: warning: dereference of noderef expression
