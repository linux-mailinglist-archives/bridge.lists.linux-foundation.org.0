Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBCD3CF64C
	for <lists.bridge@lfdr.de>; Tue, 20 Jul 2021 10:45:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E463D400E4;
	Tue, 20 Jul 2021 08:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wCLHilmrx-nQ; Tue, 20 Jul 2021 08:45:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 80A9840167;
	Tue, 20 Jul 2021 08:45:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 320A9C0022;
	Tue, 20 Jul 2021 08:45:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B086EC000E
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 08:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E904835C4
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 08:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c77zwzQCW30A for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jul 2021 08:45:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF3B3835BA
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 08:45:24 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id t2so27118039edd.13
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 01:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1pTMpOorH4LXisVDsXChy+V+9uhVQ+gNlcIaEeOCwgw=;
 b=PN0n7YiIgzdEzWTu+Hn+Zg1BVFbf8oa8DRCmTAwLnsS/hNSCj7BW9S5xB97H2O0AMc
 cZv2dH7j3sdKeolAH9wQUkAtIthofsXJVmyKUQer3a4tRlxQ7Mv06d1DRsNWX4PlOT5j
 gj6elyDDBkh0ongrV/OMYJFxmY/riLEenq1ukRLXN36IUCt6Edbuvu02k3Wz1zDII8kJ
 ROiEBPoddxtJ+LTak9vMOz5fJAFwgPalbrUZ1hRk2eEE7VA+aFOVWWyE9lkH8SjcmZp5
 depv9ZvyeSQYnkFCZZX7ugVebi5PQBlIfLwhFgpJLdiJaQNgW9sesCGtjE5Tc/zZhrJH
 hHNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1pTMpOorH4LXisVDsXChy+V+9uhVQ+gNlcIaEeOCwgw=;
 b=Ea1DtCOCWv3IvavSTb1PtIpEFR3HDET5pEbhzWVIa69Bkeu+mj3qqZdMlx+NMxaoP7
 ITx/TBHqxEV89oVbmcZuRIVpCu3Jga3HKfhM2J0xYeI34UjfQBkxA7Oe7g4LDRqxQwVA
 gQAhvpNDotXWMvWqlB7UoohFJW59kCCcVmatFhPB3CRW+6RVTEWPDOb8KCn3L5P20AQS
 W7lrIJMuyWXdqEAZJhbE/xFCCG2gz/V3f9ohrWUpPjKGcZprMhI0godIKp47BBt8xwiI
 oWI/9QQc5qK/nM1Gjn2DBMrzTZtn68i7aZ0oT8wyO4wDEtQ3L0iT1mlvmMmZU2gAew2K
 o8rg==
X-Gm-Message-State: AOAM533sBG+nNrX2cQL7MwimtNJyjhYuyo5hqAHVL+PHA4HO0q2C4SkI
 pMuEHzRtYzda0wxoCWI8dXE=
X-Google-Smtp-Source: ABdhPJxDzUmnDBr3FnJxsrTGzmISxnDFYJY0nVkE1Yu2DpPmwDKycq0Um4vr7UGXd0sHFR5RYYV2gQ==
X-Received: by 2002:aa7:c4c9:: with SMTP id p9mr20618792edr.385.1626770723103; 
 Tue, 20 Jul 2021 01:45:23 -0700 (PDT)
Received: from skbuf ([82.76.66.29])
 by smtp.gmail.com with ESMTPSA id j11sm6881855ejy.40.2021.07.20.01.45.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 01:45:22 -0700 (PDT)
Date: Tue, 20 Jul 2021 11:45:20 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20210720084520.4t7sfshyzeuw4ba3@skbuf>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-10-vladimir.oltean@nxp.com>
 <20210720075354.u57sju7bvn5o3ses@soft-dev3-1.localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210720075354.u57sju7bvn5o3ses@soft-dev3-1.localhost>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Ido Schimmel <idosch@idosch.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Marek Behun <kabel@blackhole.sk>, Florian Fainelli <f.fainelli@gmail.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Taras Chornyi <tchornyi@marvell.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 09/15] net: bridge: switchdev: let
 drivers inform which bridge ports are offloaded
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

Hi Horatiu,

On Tue, Jul 20, 2021 at 09:53:54AM +0200, Horatiu Vultur wrote:
> Tested-by: Horatiu Vultur <horatiu.vultur@microchip.com> # ocelot-switch

Thanks for testing.
Next time could you please trim the quoted portion to maybe just the
commit message? I spent around 30 seconds scrolling down, half expecting
there to be an inline comment on a line of code or something.
