Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E5E3CCC29
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 04:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42B37606D0;
	Mon, 19 Jul 2021 02:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H7zIuyLs4-iy; Mon, 19 Jul 2021 02:17:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DA074606AF;
	Mon, 19 Jul 2021 02:17:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C80DC0022;
	Mon, 19 Jul 2021 02:17:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8858CC000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8430640123
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MDwnmbXd5rZH for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 02:17:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D6D91400E0
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 02:17:54 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id t143so19040404oie.8
 for <bridge@lists.linux-foundation.org>; Sun, 18 Jul 2021 19:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cTgRVDtghkxyZQfyDmHBQUQJXuRVf+/7cKDTFF5F3gU=;
 b=WApIw/si/Yd74Gfm/puLIoV+MV73/wft6KVqOYzzRSPaigvY6OpdaVlC/cS5RQ8q5B
 /+Pjjkuhd+hHdwGQp57T3/vu+DvRQhT8Nb90oqM+FgYkXYJgnRvqhNm39bD2J2Y26LJI
 jezveRuR3nPFvRjOfotkB8rp1Da62ymknwU+6Z6X15PO/0Yj6Xaqs0aCp0hLp82ruqPg
 7UhyqUxAPvqgAdZH5xligAUF/n2Y/W3/UhVCLtj2WBoYETEy590Pb4pggKXgCf3gxVLQ
 9Mgxd32atma7EiA2sROLHNjmmawK40+NYfjeqkQegss+sIZyjrBzPMox0h8di2X3DQh/
 ePmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cTgRVDtghkxyZQfyDmHBQUQJXuRVf+/7cKDTFF5F3gU=;
 b=ft14ukQOrrBFpIUmzvO2VQwLYgZkj3MjKVFMYJb/wv10k+pG4ahiF2Ljv+76hlPPLC
 ShxXlhXef38e/k4mWXpxdX34NgwLfgVo6BylswMShI/QeoGGZnA0XJH3w1P8/VPA8hY+
 00CSLsTukk592316kSwcMCEp+LUxv3k5MK5xUZ3mMjeniPGi6G0GAwGq1m+siuxDyVUv
 NzVhAPulGUFNOL49OcgTSUUMSx61yKpegBZJjOTQ5dBCfV1qetp4xYTOVnxAch9OkqEM
 b2RG7BKCe3TQVVPT66gSlOJ50bMuuKtBoIuol8zOoCGMT2oWFkSCp9bYOig0lgqZr4Um
 zVYg==
X-Gm-Message-State: AOAM530cBkcUm8khWgtKX6KG0pCV7T8Tx+mkvDY+T45w8jJYegv6vqzL
 458oBlCHCi5ehphfinhAe1s=
X-Google-Smtp-Source: ABdhPJwu+I/7zWrmyGWn4EKJrXju0B35YkbVS1wrtNAFXfPpxDYksgmXY1gpgMZXgGbp9WlHd32u4A==
X-Received: by 2002:aca:e107:: with SMTP id y7mr20862566oig.11.1626661073945; 
 Sun, 18 Jul 2021 19:17:53 -0700 (PDT)
Received: from ?IPv6:2600:1700:dfe0:49f0:49e1:751f:b992:b4f3?
 ([2600:1700:dfe0:49f0:49e1:751f:b992:b4f3])
 by smtp.gmail.com with ESMTPSA id e29sm3538630oiy.53.2021.07.18.19.17.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Jul 2021 19:17:53 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-7-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d4ee8b6c-d171-9b7d-130b-d244de756cfe@gmail.com>
Date: Sun, 18 Jul 2021 19:17:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718214434.3938850-7-vladimir.oltean@nxp.com>
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
Subject: Re: [Bridge] [PATCH v4 net-next 06/15] net: switchdev: guard
 drivers against multiple obj replays on same bridge port
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
> Prepare the drivers which support LAG offload but don't have support for
> switchdev object replay yet, i.e. the mlxsw and prestera drivers, to
> deal with bridge switchdev objects being replayed on the LAG bridge port
> multiple times, once for each time a physical port beneath the LAG calls
> switchdev_bridge_port_offload().
> 
> Cc: Vadym Kochan <vkochan@marvell.com>
> Cc: Taras Chornyi <tchornyi@marvell.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
