Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A97DA4DC9D6
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 16:26:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 003B360E34;
	Thu, 17 Mar 2022 15:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1VpWU7tBoRo; Thu, 17 Mar 2022 15:26:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A90F0611B3;
	Thu, 17 Mar 2022 15:26:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E7BAC0082;
	Thu, 17 Mar 2022 15:26:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9614AC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 15:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91F3A60E4B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 15:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tHhj1qsnX5ZT for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 15:26:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F09A60E36
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 15:26:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B63B96195B;
 Thu, 17 Mar 2022 15:26:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F235C340E9;
 Thu, 17 Mar 2022 15:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647530763;
 bh=2+aIlNYAyt6JrvKd0I5++RrrMWoi4agbOuPrXU84NLQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E6CfVADDbMsrpQ5kFyoPWxZzsvfq8XG3bDxMpwrfROdebKhRKip6GbDvR394A5HXE
 V7J9XIWG2nSDJgAA8H9pQ0B+/OrEzZSiOZavyG20ZG+KL2vWYT5Eciqt/t3pc/jaCZ
 dJV/rWlTSwHigCJXVLi75APEGEnfYN0ObVY4ob29//r5NdK6lEu6k4jOEWq/pqwoHG
 OEmnBR6WK+5fSgSc8trlTc0FhJq4L2e8H92XkVclXFNisVD9g05RncnZEVaao1U3zp
 jWYLaN0ZovLUn9Ez3LsPHmk4U18JyRWAHYWL1+U6zmwCq4hN1J46+VDwrPh5aLmBM1
 wlAwlOe3qIXZQ==
Date: Thu, 17 Mar 2022 08:26:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220317082601.00a45d2c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220317093902.1305816-4-schultz.hans+netdev@gmail.com>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-4-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 3/4] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

On Thu, 17 Mar 2022 10:39:01 +0100 Hans Schultz wrote:
> This implementation for the Marvell mv88e6xxx chip series, is
> based on handling ATU miss violations occurring when packets
> ingress on a port that is locked. The mac address triggering
> the ATU miss violation is communicated through switchdev to
> the bridge module, which adds a fdb entry with the fdb locked
> flag set.
> Note: The locked port must have learning enabled for the ATU
> miss violation to occur.
>=20
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>

drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c:32:5: warning: no previous =
prototype for =E2=80=98mv88e6xxx_switchdev_handle_atu_miss_violation=E2=80=
=99 [-Wmissing-prototypes]
  32 | int mv88e6xxx_switchdev_handle_atu_miss_violation(struct mv88e6xxx_c=
hip *chip,
     |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
