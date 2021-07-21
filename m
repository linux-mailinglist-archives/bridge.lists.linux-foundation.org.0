Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF5F3D142F
	for <lists.bridge@lfdr.de>; Wed, 21 Jul 2021 18:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0885740290;
	Wed, 21 Jul 2021 16:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zPMtDUgMh6OZ; Wed, 21 Jul 2021 16:27:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8633540273;
	Wed, 21 Jul 2021 16:27:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 45D0CC0022;
	Wed, 21 Jul 2021 16:27:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 405DCC000E
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 16:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E51240273
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 16:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AOYn41qRW-gV for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jul 2021 16:27:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FF974021C
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 16:27:34 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id my10so1983513pjb.1
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jul 2021 09:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E8q+sxQ/OKWc9Yjv2NdwSWvKkf3e/JsO3sjkasoj5T4=;
 b=PFbCjhOF3i/Qih8MWpNpCV1WDr1IkD812JarIXVhPKFUS9GojJTTe9Laxl6eXH9Ox/
 lI5XNcYavP+RTWIGHN7tfcaET9UVWn70R26wRRPg0q6y1T5yr6QdY3wIghHroOC6Kw1V
 XGzivzeBTQU9Cn3p/4OYMqb115LRSNYarpmjRC4rgVLAeC8p2msJQ6SZN3OGyn8OwbAJ
 nsBXbx8ENY96O0ku0YZc9gJysN8/aiYyMetHRXBGhhTGlhIr4dhITRRQxTC5Mqt3uzkI
 8QYa6s47awW6f9ZQT986o03QSi7re61pvRzgVt7aej4jGk64HrmMbl/BKbxU1oLw15an
 x+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E8q+sxQ/OKWc9Yjv2NdwSWvKkf3e/JsO3sjkasoj5T4=;
 b=ZE/AmhjK02GrtYo38apw/bB0LXy1mBHI+2R/uaUSUdHuJGTV7EAYtnmLKxkRaMLk1/
 sEIiKZu7sSNEjV5SICSQ13CfSWiBbSA8ZtL1eAF83VJXVfw6YTXkXO+UCrMa+dsRvERC
 DtsRwldSLsfvvTkr3r8IUlThCMbzEJZyO69gVddRSPz31qEFDU+PCVOqozpAMhHW00IV
 A213NRcl/oS3p6d5pWujoZPW39+SuxdRxfEfE1nhlWPJjrPav61qtDCNLWPJlBwVYt+3
 2FfyLYqGuVudRFHI3QJXTVmyjeNfgIGLAt7SZy4m9R0B/0+Io/++szvFAKPKd9wFmlVo
 zg3Q==
X-Gm-Message-State: AOAM5339IRc9V1Dx+tzZUAJuf1K7YtK+N5J69jBlelz+yxGQ3Qv9EUG0
 4wwBW3wxLqUH64BTk+wpWMw=
X-Google-Smtp-Source: ABdhPJxrYFS6u6g9J7Ib9385Tt61Rm23ceo93gcW4Llpb4g/1KXiS9LQEmXOMJjdAaWUUEnFV/Gj2A==
X-Received: by 2002:a17:90a:7441:: with SMTP id
 o1mr35327306pjk.96.1626884853939; 
 Wed, 21 Jul 2021 09:27:33 -0700 (PDT)
Received: from [10.67.49.104] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id t2sm2344224pjq.0.2021.07.21.09.27.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Jul 2021 09:27:33 -0700 (PDT)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
References: <20210721162403.1988814-1-vladimir.oltean@nxp.com>
 <20210721162403.1988814-7-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <dce98c0f-5ec4-8a54-209e-7891d239fbc9@gmail.com>
Date: Wed, 21 Jul 2021 09:27:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210721162403.1988814-7-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Marek Behun <kabel@blackhole.sk>, Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v6 net-next 6/7] net: bridge: guard the
 switchdev replay helpers against a NULL notifier block
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

On 7/21/21 9:24 AM, Vladimir Oltean wrote:
> There is a desire to make the object and FDB replay helpers optional
> when moving them inside the bridge driver. For example a certain driver
> might not offload host MDBs and there is no case where the replay
> helpers would be of immediate use to it.
> 
> So it would be nice if we could allow drivers to pass NULL pointers for
> the atomic and blocking notifier blocks, and the replay helpers to do
> nothing in that case.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
