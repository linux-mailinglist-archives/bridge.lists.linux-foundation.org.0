Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A72A5621844
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 16:30:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF644401F4;
	Tue,  8 Nov 2022 15:30:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF644401F4
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=DSqKxORe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EyVnVVpZZLFr; Tue,  8 Nov 2022 15:30:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 26252401CB;
	Tue,  8 Nov 2022 15:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26252401CB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A6CEBC0077;
	Tue,  8 Nov 2022 15:30:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CF166C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA189605AE
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA189605AE
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=DSqKxORe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8bXErpNusJ9S for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 15:30:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A367560D8C
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A367560D8C
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:30:10 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id kt23so39519989ejc.7
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 07:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FpLiGaXhotQZ8b2nqHMo2ysie9FYsoam/Xs2nB2FQwI=;
 b=DSqKxORe+HHRIvWQTmqEOWX7uJ+Bog3bxbKTF2CX1y3k0sLtXjrT49HSo8EnDml9yz
 Cql1c9yQozM1lmZCl9QgxvGYpEk43cOuUi7piWpWCKc7VjEEBUZa9ooamxw2bD0xYtE8
 jSnU+wg3G58OTskD78IJllcxnpQmVJ9Z0F5cAHnOrNUFly4Y4X6OlhUzgeZJ4HHZcaiS
 Ea5TNEcVOHU/al1AS96Gqy3pQwPK88njNFhLLFmQIo/XYcD7CHAhH7kyJZPtxJlllvRn
 9GeoY4dr7BOfM4EXDHpQt/lJZ5mPdWI6uRSHfqg/5F6dDwZCfExSBMCB+/uUBDQzWWjk
 Zzug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FpLiGaXhotQZ8b2nqHMo2ysie9FYsoam/Xs2nB2FQwI=;
 b=UB8YBrlJM4b0NqczkxT/EWffbDf9IQXUItyaHUupzaeSlmpKqK+ycPc9aXHTOoH8Ed
 z9SgLE0thDtXlIbJPE33e+b3rN7nb9GWNr1DtklwFO0uTOr9XJK+dIpwl/82zND9UW4X
 ocuJjiV7QDmBDG3b1iDhrwM+7NXJggeVpX1hMkv3/YhcyQT+YkBxdpANKI8sKyMLgraC
 hVh1jJndnfI6+vQqnjnwd1atyeBRvKIT99nC0AyHPcPvC9bvZgmY7SbgnhoAo/Uro/JM
 /Zr47xSrYMcdLhc4S3fMm1mjw3l6R091q+B9ga7nhImSkxJMZ5IPe5yQxSLXilsYTUSZ
 7YmA==
X-Gm-Message-State: ACrzQf2B9RCCDy7bCyCb4wf4v+TdLYztfdXbmm3pAZEkC3LzWuwea8By
 vEAw6O1wxXj5Q9xTOG6itVc=
X-Google-Smtp-Source: AMsMyM5LSnf+Pf3Owy39GhVGMBlevi8XhExQOJ/9qPL7Z7WDtKsrKPTC5uLosSkAeln7ysL8LBrxtg==
X-Received: by 2002:a17:906:eeca:b0:730:6880:c398 with SMTP id
 wu10-20020a170906eeca00b007306880c398mr54399922ejb.706.1667921408806; 
 Tue, 08 Nov 2022 07:30:08 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 ku15-20020a170907788f00b007ae1ab8f887sm4865360ejc.14.2022.11.08.07.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 07:30:08 -0800 (PST)
Date: Tue, 8 Nov 2022 17:30:06 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20221108153006.githtup7oisty4qb@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <cover.1667902754.git.petrm@nvidia.com>
 <61b030c0932726657eff1ac545d1904a2ee930ea.1667902754.git.petrm@nvidia.com>
 <61b030c0932726657eff1ac545d1904a2ee930ea.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61b030c0932726657eff1ac545d1904a2ee930ea.1667902754.git.petrm@nvidia.com>
 <61b030c0932726657eff1ac545d1904a2ee930ea.1667902754.git.petrm@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Jiri Pirko <jiri@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 14/15] selftests: mlxsw: Add a test
 for locked port trap
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

On Tue, Nov 08, 2022 at 11:47:20AM +0100, Petr Machata wrote:
> From: Ido Schimmel <idosch@nvidia.com>
> 
> Test that packets received via a locked bridge port whose {SMAC, VID}
> does not appear in the bridge's FDB or appears with a different port,
> trigger the "locked_port" packet trap.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---

Pretty impressively designed. I liked the extensive checks (for example
that traps stop counting after port security is disabled).

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
