Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 083B228E8F5
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 00:58:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8142D88310;
	Wed, 14 Oct 2020 22:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUj3ICSpXD+q; Wed, 14 Oct 2020 22:58:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C889B882C5;
	Wed, 14 Oct 2020 22:58:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AB57FC0051;
	Wed, 14 Oct 2020 22:58:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D620C0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 22:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 63B6387CC7
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 22:58:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNceEzYVY5uo for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 22:58:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C44F987CC4
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 22:58:49 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAE0520776;
 Wed, 14 Oct 2020 22:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602716329;
 bh=kMpSZ3gkc8inIapGbTJlpkhoLPPmZniPgrwUXxmM2FU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=B6VbtQ3tyTewZBxnTOsymsv3qs0RJqXSESXnExKF2QgXdsa3371f/s9Md09zdoZP1
 skefn7C8UTTMAPuZRpo/nshzGKnBY5p0ivy6KSTvO6wDn9Gr3o+aF20KMEVPRie70p
 DZDFnxFz2cyVZiugZWwkbMt7LnmBB4Udpy+4kdyU=
Date: Wed, 14 Oct 2020 15:58:47 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201014155847.2eb150f5@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 00/10] net: bridge: cfm: Add
 support for Connectivity Fault Management(CFM)
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

On Mon, 12 Oct 2020 14:04:18 +0000 Henrik Bjoernlund wrote:
> Connectivity Fault Management (CFM) is defined in 802.1Q section 12.14.
>=20
> Connectivity Fault Management (CFM) comprises capabilities for detecting,=
 verifying,
> and isolating connectivity failures in Virtual Bridged Networks.
> These capabilities can be used in networks operated by multiple independe=
nt organizations,
> each with restricted management access to each other=E2=80=99s equipment.

Please wrap the cover letter and commit messages to 70 chars.

> Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>

You have two spaces after the name in many tags.
