Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 833E13C9C59
	for <lists.bridge@lfdr.de>; Thu, 15 Jul 2021 12:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86A214159A;
	Thu, 15 Jul 2021 10:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id axmyNClsMVkF; Thu, 15 Jul 2021 10:03:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E9B1F41572;
	Thu, 15 Jul 2021 10:03:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94B48C001F;
	Thu, 15 Jul 2021 10:03:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 887E2C000E
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 15:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69382403CE
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 15:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=blackhole.sk
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z9ASm00hlb34 for <bridge@lists.linux-foundation.org>;
 Mon, 12 Jul 2021 15:50:04 +0000 (UTC)
X-Greylist: delayed 00:08:50 by SQLgrey-1.8.0
Received: from mail-proxyout-mua-31.websupport.eu
 (mail-proxyout-mua-31.websupport.eu [37.9.172.181])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32E6D4002B
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 15:50:04 +0000 (UTC)
Received: from in-6.websupport.sk (unknown [10.10.2.106])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mail-proxyout-mua-31.websupport.eu (Postfix) with ESMTPS id C85D1C0015;
 Mon, 12 Jul 2021 17:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackhole.sk;
 s=mail; t=1626104461;
 bh=RWYhEtAwTgLXUQOVcWGtAxGzTFa/bMHHrTYq7ywzREE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=kwOYoP0vDwN7lEgYWF+w/8XPSj4+0UK18zCtnWvMuutSLKZR2tnK/ZAoGhV/ggRXp
 3QC1iQ3StGFLmXr+sLecOpX3rRWb99ntnpSzFpF0koTVkTJlyfu4OuDIy10i0TZ8p4
 go0HudYCEd+31SrgBXwYDhlOPrsaEVPNuJlTA3AU=
Received: from thinkpad (otava-0257.koleje.cuni.cz [78.128.181.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kabel@blackhole.sk)
 by in-6.websupport.sk (Postfix) with ESMTPSA id 4GNnzd1fWGz12Nlk;
 Mon, 12 Jul 2021 17:41:01 +0200 (CEST)
Date: Mon, 12 Jul 2021 17:40:59 +0200
From: Marek Behun <kabel@blackhole.sk>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210712174059.7916c0da@thinkpad>
In-Reply-To: <20210712152142.800651-1-vladimir.oltean@nxp.com>
References: <20210712152142.800651-1-vladimir.oltean@nxp.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Out-Spamd-Result: default: False [1.90 / 1000.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; RCPT_COUNT_TWELVE(0.00)[15];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 ASN(0.00)[asn:2852, ipnet:78.128.128.0/17, country:CZ];
 FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,davemloft.net,lunn.ch,gmail.com,resnulli.us,idosch.org,waldekranz.com,nvidia.com,networkplumber.org,lists.linux-foundation.org,ti.com];
 SUSPICIOUS_RECIPS(1.50)[]
X-Out-Rspamd-Server: mail-antispam-4
X-Out-Rspamd-Queue-Id: 4GNnzd1fWGz12Nlk
Authentication-Results: in-6.websupport.sk;
 auth=pass smtp.auth=kabel@blackhole.sk smtp.mailfrom=kabel@blackhole.sk
X-Mailman-Approved-At: Thu, 15 Jul 2021 10:03:23 +0000
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@idosch.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [RFC PATCH v3 net-next 00/24] Allow forwarding for the
 software bridge data path to be offloaded to capable devices
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

Vladimir, on what mv88e6xxx devices are you developing this stuff?
Do you use Turris MOX for this?

Marek
