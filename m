Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBF43C6877
	for <lists.bridge@lfdr.de>; Tue, 13 Jul 2021 04:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A31B608C1;
	Tue, 13 Jul 2021 02:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pwzPdOE25_Gs; Tue, 13 Jul 2021 02:21:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D100860824;
	Tue, 13 Jul 2021 02:21:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 984D8C000E;
	Tue, 13 Jul 2021 02:21:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6343C000E
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C550740576
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HXGQ9xwlkz1b for <bridge@lists.linux-foundation.org>;
 Tue, 13 Jul 2021 02:21:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26272403FC
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:20 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 me13-20020a17090b17cdb0290173bac8b9c9so466959pjb.3
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 19:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=b+O/hTBAU4c7+jLOai3Zz6MaQKuBMbZ0EUKpHZHXDNE=;
 b=e7zsc5BS3yHMk+8OPMv0qI6y+OWRBhRSm9i4Z6fPvikbFTRhq40T75sktruWKK4MRv
 02bn5jxlqz/eHoCUNgJRR8QMbBqBNDfFWnLnbkfJVR60XqW33M5Ususy+oa2+ROi7u8U
 ZwE0oXRa5n3+zbTRZh7EfXN6XkPNlYYG1J/xlBN0TA8xOJhocNwHyqJ6xcmnRB+GODFT
 nBxBu5DuIU/87/cx7RrDYtffl6KoYqWVpgXW0BvGBO5fnR2gaUhSSbGpkcvLO0226FKH
 LR/mGBD9VBb6FS9etFtAL6/0Wk3JVnLT++0gvmLP5P0WvTszhHpDXy0g8H9dzVhy36Tb
 3TAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b+O/hTBAU4c7+jLOai3Zz6MaQKuBMbZ0EUKpHZHXDNE=;
 b=GVtLLXKZbTPgpTQ110C3i4ChP2fzzdvnMSnUeY3Cb5LFhQUfg3ii5ySdGbWE5r/RUn
 rrXuca/zSd9A0rp10hfDSoOQGYItDppJxH2MbHP5kKJtiEvGfM3jZEWrFbxaw6RNldsz
 M2bGtS8twTLtL/bgrXW3wXBsnidUNZ84HyEhS6SWjpd9d5xow8rZMbEnOmyWbVfH7xw5
 qw1T25vaRrW8cENOJUDetwZnt7by70XkLipY/JK9vhLqxiWT47UzkwbZdqibqt7UbaV2
 gRklmgoILuNSez8DpfVMtBiPVfF/ykjWkedpsUYL8jzho4bRfae+Yt2mWjJyvHtiRHb6
 aIDg==
X-Gm-Message-State: AOAM530qpF5z7PP29Ael9OGn4FKDkFTT2on+aDweY+E42wLV4muzcPRU
 WsTYyNcPGVPzbQq1KOgusck=
X-Google-Smtp-Source: ABdhPJw4cy3VVuixyaJ8cZn4nsskfjydQgU3ZOOKoUTGaZDxetTkSJ3PEAm6x5PaQXaswLHhry/soQ==
X-Received: by 2002:a17:90a:af88:: with SMTP id
 w8mr1914042pjq.74.1626142879597; 
 Mon, 12 Jul 2021 19:21:19 -0700 (PDT)
Received: from [10.230.31.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x13sm14497645pjh.30.2021.07.12.19.21.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Jul 2021 19:21:19 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210712152142.800651-1-vladimir.oltean@nxp.com>
 <20210712152142.800651-3-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <20515ce3-7286-931a-e086-1778dfafa7a1@gmail.com>
Date: Mon, 12 Jul 2021 19:21:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210712152142.800651-3-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@idosch.org>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [RFC PATCH v3 net-next 02/24] net: dpaa2-switch:
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



On 7/12/2021 8:21 AM, Vladimir Oltean wrote:
> Make more room for some extra code in the NETDEV_PRECHANGEUPPER handler
> by moving what already exists into a dedicated function.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
