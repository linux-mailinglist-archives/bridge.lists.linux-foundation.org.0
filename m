Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 825513C6879
	for <lists.bridge@lfdr.de>; Tue, 13 Jul 2021 04:22:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 274DD835E0;
	Tue, 13 Jul 2021 02:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tj0x3XHDhhKX; Tue, 13 Jul 2021 02:21:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C9BB083051;
	Tue, 13 Jul 2021 02:21:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7EC9DC001B;
	Tue, 13 Jul 2021 02:21:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 193DBC000E
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EEFD14012C
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aQ_BUFZ3-nXC for <bridge@lists.linux-foundation.org>;
 Tue, 13 Jul 2021 02:21:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 661AB400F6
 for <bridge@lists.linux-foundation.org>; Tue, 13 Jul 2021 02:21:55 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id x16so18137240pfa.13
 for <bridge@lists.linux-foundation.org>; Mon, 12 Jul 2021 19:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NlVPTZqzkr7X/6SxfWdup8v6l5x7x3FOQrlL4P9RfQg=;
 b=ApkQ294WrZDrFMp44CboLatxYl0a2e1eN2N/HgtF8ZMgZxrKHelJMNQpByirmSEAHt
 /VZd8uL/gbvdnMCBGsbWr6euvFrlQbKKUM4OgFSdB6ZCaqfVq2MSNVdF9tHLddSFnNKj
 NZa3XQ4HwSQj/vcSlI6yMUHX/Q4H09d1tqupDQqCAEBgORcOpUZsGSWD1VUFUtbLNqiP
 zqS3S+Ac5eKdwSL8sqnNs3+8vb3fLDTIGp3bpo1Ea+8lH/EUc/3F6n7DaGs0/aCmV0wf
 zCocuPGt3uEOHiWPXzyHmz796Wp+ONQEzPOnQzdsmrMbvezQxqNkTFUtPKGobAeRtsTH
 a4uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NlVPTZqzkr7X/6SxfWdup8v6l5x7x3FOQrlL4P9RfQg=;
 b=Qv4tOvbb6B2JbLSsZvRUD6UsMDN4kY2iKjiMTqVIyLMw0zw94uDj4YgKhAnKtyTkZj
 ZD7kegqyWDHkAs8yxq6N5SRb3RKtoptZtUusGepG+0KM1mYyuDbdYKGm/vB6fNjrX6+O
 bAQMtT2iWjfsgtQayogqMwAKKyzZRwFdN4U89Tvk6sFNSBDXJIQfk62w+9k76xih7KOC
 bM257ZcDISjxCoYgnymMQmFP52e221HXQvBdu3Gj34vBqx+EVuHrAuMO0e/OWjZ2Pzyu
 zoRDfDZqyYCJaQZ2EcDF7AqZ+4j18M6Mfuk0Y9ypKZ9jaqep2PDStva1NYW/YtiSqyU2
 PkiA==
X-Gm-Message-State: AOAM5323GU+Mbs4MwZksvnfuPrv937S+y6bqzTcbaDfuGtc7D710PFvR
 p7jBw96P1kkvNrwOB+gCDlc=
X-Google-Smtp-Source: ABdhPJyYA1T49l5wpTcSySdSWTBvDZquM32w3tTKfIemyz1nNf8hvOADBOTR+1exaI4v7AQhBBmpxQ==
X-Received: by 2002:a62:7c52:0:b029:329:d4c2:8820 with SMTP id
 x79-20020a627c520000b0290329d4c28820mr2036248pfc.59.1626142914851; 
 Mon, 12 Jul 2021 19:21:54 -0700 (PDT)
Received: from [10.230.31.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s123sm17321242pfb.78.2021.07.12.19.21.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Jul 2021 19:21:54 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210712152142.800651-1-vladimir.oltean@nxp.com>
 <20210712152142.800651-4-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c4f3a25a-9dba-2710-490e-45e47ef56528@gmail.com>
Date: Mon, 12 Jul 2021 19:21:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210712152142.800651-4-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@idosch.org>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [RFC PATCH v3 net-next 03/24] net: mlxsw: refactor
 prechangeupper sanity checks
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
> Make more room for extra code in the NETDEV_PRECHANGEUPPER handlers from
> mlxsw by moving the existing sanity checks to 2 new dedicated functions.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
