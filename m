Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B080A31842F
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 05:12:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADED886B70;
	Thu, 11 Feb 2021 04:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tGGAaSb2aV97; Thu, 11 Feb 2021 04:12:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ECCD86B71;
	Thu, 11 Feb 2021 04:12:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 17470C1DA9;
	Thu, 11 Feb 2021 04:12:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A3449C013A
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8AB0A86B71
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qFMzJ5KzQH-h for <bridge@lists.linux-foundation.org>;
 Thu, 11 Feb 2021 04:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8406A86B70
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:12:26 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id g3so2628599plp.2
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 20:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WOudY93SgpXlwWt2mPFyzJ30b3FUMM1XmeZpD48+PWs=;
 b=gtmhq+gKxAIQwRoLueiyyM8KSz4zS74fz60WRnCzlmWBkOSNceC6LXR/Cp0Q8TGI1b
 ZcaEOxXCJIZSevyBzh7CUZvR2ctixi2PtczMc5b+WErQkPB5ZdsL9HTbl0NCRJZ9BoVM
 qMItqyj21CC6NlKcXy32PD8ORyArFEETL6/K9qAWfN9aupXIfgkOvehV2v3yy27jFIDn
 96JyFUUAQa5h6ZpFBn1RkwN2l8LhQvOFfWqyHmK79ChTuRMNBOJy9oe/1YiVoICmvO6c
 W5tN0SwmeS+oK462NWLtOlM2sOMiGOLoYmrMlGyJcAodpCQJDuIyv7aQmlcWbgkWN91H
 Ik9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WOudY93SgpXlwWt2mPFyzJ30b3FUMM1XmeZpD48+PWs=;
 b=UYepao5uYh/XTWLhCJbQ14Iawou6+Nh8g4DKWV9qCjFcMUto65bZu6nZm8d+JMqvoB
 GFNshWndEO2DA6XYLAufkUlONV87LgO3ToxAxpxtni50ENtnOcB2Rtp3TO9xMeCAuPjR
 fm5sGDTVuE9cEdkK9S04PTns1NCdvquU5tBgfqa5lG+ONhUbrKIJYFJeq31iw9s+iv6n
 3VworDo/6HsWSxMrqapWzVWtkNYndG+/JINAuSBt/i/xbplo+2yv9jz9mW/LMMnph87t
 MN+yoMFBGbJrF/p0PpztZZlzq3wdvJXzQjW2Vr5Q/7KqqFJJaQGO30fwPLWIutZGiyS4
 OlbA==
X-Gm-Message-State: AOAM532A7/rlkSD8d94zW48Gqbj9f7lRpHXEyPYJYq+kM4aCNGord+yL
 SdDlOnszsYWgf5zGJWCmG4U=
X-Google-Smtp-Source: ABdhPJwMmXJ+BcCWGjq+/TD/aAM7GHDHaHV5fg0VMeLDDPvPLiaFtBqEnRTUiL16VUTJF0Wppj9J0Q==
X-Received: by 2002:a17:90a:a585:: with SMTP id
 b5mr2172130pjq.110.1613016746009; 
 Wed, 10 Feb 2021 20:12:26 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c17sm3415368pjq.17.2021.02.10.20.12.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 20:12:25 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <20210210091445.741269-2-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <588cff67-699e-1971-a1a5-79d42f969f15@gmail.com>
Date: Wed, 10 Feb 2021 20:12:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210210091445.741269-2-olteanv@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 01/11] net: switchdev: propagate
 extack to port attributes
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



On 2/10/2021 1:14 AM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> When a struct switchdev_attr is notified through switchdev, there is no
> way to report informational messages, unlike for struct switchdev_obj.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
