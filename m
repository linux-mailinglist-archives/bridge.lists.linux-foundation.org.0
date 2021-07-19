Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 574E83CCC35
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0733440439;
	Mon, 19 Jul 2021 02:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hpSxS6S0mQ5f; Mon, 19 Jul 2021 02:20:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 68FE140421;
	Mon, 19 Jul 2021 02:20:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B219C0022;
	Mon, 19 Jul 2021 02:20:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4504BC000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16B12606D5
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8MDSBhBQ_Vhd for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:20:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C21A606AF
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:20:36 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id p67so19077691oig.2
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EsGNcxhUNDjpw3jd2PBLWZrFBrLemsllXRQ5T8XmNN4=;
 b=i/+5sh9nbghabMKPFon1cWSeCuZG+3hzirZxIEbeq1aVY1aSNB5SD/64V/P2ljBLGj
 0TH9h9ViC9rx7AtbR6Qm6zLtvezcyoObd3p78GjXf9qjNBEhGhQUXPPccJhqqQhfmMF0
 Jwn9N0TciYjAkDCYLaUcqZBplJ2qImSZw/AAzASnYHSf0/J6PgO83rWzKlK6YsRP+w6t
 cpXI0KrJ9WGHHSDfelz0EEaQ27mPxsBBE7T/HDHHwiUrBN1QacUTEBrH8YbGEmYJCREw
 C12qyBEEbRl6jPth9ZX2gFrxRXqgSonPBxkFsfaI9fbQx4ePhtX6GjTqQpayA9JC7uP/
 g2AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EsGNcxhUNDjpw3jd2PBLWZrFBrLemsllXRQ5T8XmNN4=;
 b=rjpjOxg0hPvE/UPtymhsGzcp3PTCZqD0FtRKkYWH81jI7+OS+fcpAHC6DZaITXQYm7
 KbryWlh06d4gRdGRXxBoYNfKMi7I0TnUe2XalNju4qzxyKLugyVN8v2Cw8bvbowMjwqN
 Lajop/Npw7SG3O7bgFBmDWepSditBn5mVmHuUQ1U/GySSQ/gBzVOIEck+HntaYrg6rCq
 4bOkTdj7bPb6QIrSgOFVuHzaP/ynt2BrCslNwSCsk15t9jB7eePHPZ8OsmA+g6cIsySr
 Qf9AjjI1RPaqY0GcRM+fo48R7jurGkffCmcLu5XYSn9MgE53bqu5delxx6dZ7tO9wT1A
 U5VQ==
X-Gm-Message-State: AOAM531mxB1F8p56EGNWAN+eEwxLARuG7JWessMhzPLPhlyW37f8UyuG
 NU++p6QL+KMGHXcuuz5acIs=
X-Google-Smtp-Source: ABdhPJyNFO+4UoyqeKBQQXE1MSOxEiWK5bPw/Goz3ersRXBweXP/wHIYqtXpsjs8PILbS4QZhtbBxw==
X-Received: by 2002:aca:4f57:: with SMTP id d84mr16412279oib.71.1626661235474; 
 Sun, 18 Jul 2021 19:20:35 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id k67sm3601668oia.8.2021.07.18.19.20.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:20:35 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-6-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <df6e4013-31e4-39f6-3c40-52a897b3b723@gmail.com>
Date: Sun, 18 Jul 2021 19:20:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-6-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 Vadym Kochan <vkochan@marvell.com>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@idosch.org>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Marek Behun <kabel@blackhole.sk>,
 Taras Chornyi <tchornyi@marvell.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 05/15] net: marvell: prestera:
 refactor prechangeupper sanity checks
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



On 7/18/2021 2:44 PM, Vladimir Oltean wrote:
> In preparation of adding more code to the NETDEV_PRECHANGEUPPER handler,
> move the existing sanity checks into a dedicated function.
> 
> Cc: Vadym Kochan <vkochan@marvell.com>
> Cc: Taras Chornyi <tchornyi@marvell.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
