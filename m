Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7592D8B29
	for <lists.bridge@lfdr.de>; Sun, 13 Dec 2020 04:31:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B5375203D8;
	Sun, 13 Dec 2020 03:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DwdXIQVQWx5g; Sun, 13 Dec 2020 03:31:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 15A79203D7;
	Sun, 13 Dec 2020 03:31:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F076CC013B;
	Sun, 13 Dec 2020 03:31:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5AA98C013B
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50D0185D50
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:31:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2frstcPuAgEO for <bridge@lists.linux-foundation.org>;
 Sun, 13 Dec 2020 03:31:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB2F885CFF
 for <bridge@lists.linux-foundation.org>; Sun, 13 Dec 2020 03:31:05 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 11so12315595oty.9
 for <bridge@lists.linux-foundation.org>; Sat, 12 Dec 2020 19:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+BjOxXb7d/HLHo33woNIMHOuryX58MLy5NrBZNm8XrM=;
 b=i04BhdscTr016PH0OMI+WWHAM/R2dj9iJUnwPbU3rPrn6HdYipyJQbR5wMokIuUwLA
 pxlOmDLFP71D8YWI6bPenb79Tz/UYM1UlMgdLO+sKXB8mhi7GV9vTz2V7npiAM8OqVXd
 b3QX/U4zo9bHWvD+04ErPAWgPbzIQZt+uhZATWEraY1T2QzgGmULeUaC1Z+nzg3O6VZ1
 Um7d52uQLL1f0UkJdle4QXc7R9IJ5GTnF8rUKZ8mXSs/TPCdAjT8UIsEvSanZBAWN2TX
 VZkG4JYBZZN4mlJKZZf+I9yvf6xDlCsEFnjwO9iYvCN/AL8MosEKX0jANf+oPjEngq2Q
 XIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+BjOxXb7d/HLHo33woNIMHOuryX58MLy5NrBZNm8XrM=;
 b=OsKLWYsJJJB9XvRN5UMXszWrX2oW8MVC9BCLTbXHMAMITy8xG1ZwXHoVPIL4jyPCAN
 IGhqIuKcW26kmK0sqi/vWh1UHOHPdLCkmyEjohK58z9Eat1TG94y+gj64B2aez6Zv+SB
 gF1FRgiVQGqH2LYR9uR3SJ0zH0YjGtJ5G31prytx29z7KXW5dOBck0GZkOuREhPBlOqo
 7zZ33BSUOJ2WJwMDxzZweoxaJX/pml6rJdfC5DfQVukCs+xf20PNgxDksACA0AfI2YYm
 f2BO6Mw7x+pl4mvAk/OmIBTn8YVZbjjKsrybODzhyHw8iD6Gwh2pwi0S7Z1g8Zwp6s/y
 OTgg==
X-Gm-Message-State: AOAM530KwqJ4lZteLPYqu8DoAXx8BgIrhPkylUWBnkdzvhswOzYZSKFO
 lOinpWTZUmtkn3AplwvA7cE=
X-Google-Smtp-Source: ABdhPJxVF/+hDNcFK1VNuN477dC2vbBJ+kIVFa7ffqsU3bxSQXVdXCUJUIXPszH41PXwKyTFyvqWtA==
X-Received: by 2002:a05:6830:1be9:: with SMTP id
 k9mr15275563otb.226.1607830264945; 
 Sat, 12 Dec 2020 19:31:04 -0800 (PST)
Received: from ?IPv6:2600:1700:dfe0:49f0:5c21:b591:3efd:575e?
 ([2600:1700:dfe0:49f0:5c21:b591:3efd:575e])
 by smtp.gmail.com with ESMTPSA id d20sm2339764otl.64.2020.12.12.19.31.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Dec 2020 19:31:04 -0800 (PST)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20201213024018.772586-1-vladimir.oltean@nxp.com>
 <20201213024018.772586-4-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <27e7d73b-1200-a9f1-94e3-5e494f54e49e@gmail.com>
Date: Sat, 12 Dec 2020 19:31:01 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201213024018.772586-4-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v2 net-next 3/6] net: dsa: move switchdev event
 implementation under the same switch/case statement
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



On 12/12/2020 6:40 PM, Vladimir Oltean wrote:
> We'll need to start listening to SWITCHDEV_FDB_{ADD,DEL}_TO_DEVICE
> events even for interfaces where dsa_slave_dev_check returns false, so
> we need that check inside the switch-case statement for SWITCHDEV_FDB_*.
> 
> This movement also avoids a useless allocation / free of switchdev_work
> on the untreated "default event" case.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
