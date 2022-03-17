Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8EA4DC12B
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 09:29:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B715A84344;
	Thu, 17 Mar 2022 08:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vf4DgjdLwcJz; Thu, 17 Mar 2022 08:29:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4B89D8421C;
	Thu, 17 Mar 2022 08:29:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0F740C0073;
	Thu, 17 Mar 2022 08:29:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9FE6BC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F31B4187C
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KtsTFLQqFFoU for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 08:29:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BAF8641867
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:29:15 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id y17so6205194ljd.12
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 01:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=0LIMf2wAtLBEAi/57yWN7rM87seWRRBpgZ91TFWXDsc=;
 b=Ct1jRFK9QSNtX/UHfG54ye6ymLlehHvfGhaxcp4KotK30E4V7fGxxSRW2iMJ8nJWjr
 IX95NN9TNTnCKufsm5+m49eAxrXJSLQ4qH7fpRbR85s03bwOaGnm+mbCZx+tOVKWPqiV
 PP3yRghqAVBGHCYKL2iX9KS3xZQuFj8g3FPbgrtiMY91HvdR5F9SOQIWs9oSgDdlw754
 4Q64Pb4sF5dcuT5B4f2z4x/4MUOM5YegzVCLc34FAg65vxYm67s7hmCfNI6Pqp8p8u9J
 2dr+VmwRn2HltCf2aFgEYrTuZNArDMjdDEvTM9dM3VbDgWyVO7Lw/1bf+Rw5gWfyc0Fz
 j/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=0LIMf2wAtLBEAi/57yWN7rM87seWRRBpgZ91TFWXDsc=;
 b=jD97TRELlSKhFIKNnvb3fDvdr8oI1+TAq8R6gE1OD58v9McVSc190XtzFYxBAeCqm9
 hKjOZeOJDifb8zxQYXjbpvwqr/ywtoS4Rp6g9KRBs62K/04zr8SUe1HfYPuMzMrg5xgq
 cnj6c/bTwp3Lv8clGRwbIUoWg44wEnmI0N1CUBVXYmOGqVfTE/Gqdh0tmnCzntRQ5ZrP
 IKLR8aS7TodHSpJPYbxe3pzj1ZT+b1RIkCOEXIwtuXD7nrvFyzCHp9eXonmfQxMbYsgr
 CibzqVNN3c/N2Abw+wn8W1mfLPRCltNcsJw1O6DAqZartEcB9gW/I8B4IuqRpl6CY6na
 lWng==
X-Gm-Message-State: AOAM532K4rlVeeR3/6/BA3r8F+9T0/A3qnhjURPhW/ahpoZiFH3wzrtn
 GNQVv3eSCluihHTqSPq0lc90u/CFxtxWQA==
X-Google-Smtp-Source: ABdhPJygQccngwI1ufgBGMLKZLloqXjZMfJqcXYh6qOSHO3Vg4I+aYcTJqZghnw3PaphvUjTInlKqA==
X-Received: by 2002:a2e:a552:0:b0:249:3f52:9fec with SMTP id
 e18-20020a2ea552000000b002493f529fecmr2110810ljn.341.1647505753448; 
 Thu, 17 Mar 2022 01:29:13 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 p1-20020a056512312100b004489135d9easm384297lfd.255.2022.03.17.01.29.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 01:29:12 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>, Hans Schultz
 <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <f9b3ecf5-c2a4-3a7a-5d19-1dbeae5acb69@gmail.com>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <f9b3ecf5-c2a4-3a7a-5d19-1dbeae5acb69@gmail.com>
Date: Thu, 17 Mar 2022 09:29:10 +0100
Message-ID: <86o825htih.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Jiri Pirko <jiri@resnulli.us>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH net-next 0/3] Extend locked port feature with
 FDB locked flag (MAC-Auth/MAB)
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

On ons, mar 16, 2022 at 17:18, Florian Fainelli <f.fainelli@gmail.com> wrote:
> On 3/10/2022 6:23 AM, Hans Schultz wrote:
>> This patch set extends the locked port feature for devices
>> that are behind a locked port, but do not have the ability to
>> authorize themselves as a supplicant using IEEE 802.1X.
>> Such devices can be printers, meters or anything related to
>> fixed installations. Instead of 802.1X authorization, devices
>> can get access based on their MAC addresses being whitelisted.
>> 
>> For an authorization daemon to detect that a device is trying
>> to get access through a locked port, the bridge will add the
>> MAC address of the device to the FDB with a locked flag to it.
>> Thus the authorization daemon can catch the FDB add event and
>> check if the MAC address is in the whitelist and if so replace
>> the FDB entry without the locked flag enabled, and thus open
>> the port for the device.
>> 
>> This feature is known as MAC-Auth or MAC Authentication Bypass
>> (MAB) in Cisco terminology, where the full MAB concept involves
>> additional Cisco infrastructure for authorization. There is no
>> real authentication process, as the MAC address of the device
>> is the only input the authorization daemon, in the general
>> case, has to base the decision if to unlock the port or not.
>> 
>> With this patch set, an implementation of the offloaded case is
>> supplied for the mv88e6xxx driver. When a packet ingresses on
>> a locked port, an ATU miss violation event will occur. When
>> handling such ATU miss violation interrupts, the MAC address of
>> the device is added to the FDB with a zero destination port
>> vector (DPV) and the MAC address is communicated through the
>> switchdev layer to the bridge, so that a FDB entry with the
>> locked flag enabled can be added.
>
> FWIW, we may have about a 30% - 70% split between switches that will 
> signal ATU violations over a side band interrupt, like mv88e6xxx will, 
> and the rest will likely signal such events via the proprietary tag
> format.

I guess that the proprietary tag scheme a scenario where the packet can
be forwarded to the bridge module's ingress queue on the respective
port?

> -- 
> Florian
