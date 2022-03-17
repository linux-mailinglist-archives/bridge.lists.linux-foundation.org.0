Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDEB4DBB8D
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 01:18:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B557461247;
	Thu, 17 Mar 2022 00:18:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hIDtUtR6lCbx; Thu, 17 Mar 2022 00:18:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 38F2260ACA;
	Thu, 17 Mar 2022 00:18:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 00C49C0033;
	Thu, 17 Mar 2022 00:18:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4DFD8C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2930080DAB
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzxX_iLTeAya for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 00:18:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBAAC80C66
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:18:33 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id 6so1386267pgg.0
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 17:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=JlSDTrMLCmc5n2ZJdwjUCSRTD54RzeM/4/q2sdv25jo=;
 b=c6sWo3xXkqmXwk4zqCMnEhspLRrdVlstTAEwqW5ADtJsxzmXRVvGDhHJwNbvm3L1GE
 cBePNIqauQpE2mLrOvmuh2DzSlaizlX28lqEJOuJnCB3essSkUsssjlTc5I9j+YdI+ML
 ah9cynpMusdLJTPHlaTrCjPCYdY4CKrxFigK4vTd4zcrcugtT/SqBM34cceNXtEn3Cmh
 n2qX3+Ebtdw7/Fl64N/gScs0ozHSk6Lrnvpjna19n/oGwvzO8M7wFa8UOop1wQBkqki2
 qujVIXmhyeVE09+4HeePt8Jvw2HQPA7w1UJ5QKLijFRNTqrPN3KOcFQqDIlsIa5f10Kc
 oC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=JlSDTrMLCmc5n2ZJdwjUCSRTD54RzeM/4/q2sdv25jo=;
 b=XS5w+ZyWlWpTiG+CxkQ6EYGe4krMibClCNdCvNyGSaEm/NqEqtKQnTSE4YLOI3ahkC
 VvF0Dm+aMj2D3waBgOmgSabopImiTP1EsHQfUmjjyUEz/unsRISlwfa0MakY7xhW2WD0
 nBr8WyAHnrDB8NEtIvpnFAnU8qUVQk8b9Bt9hbjFqcwmGmfyE85/Jx3xzrK/LI665ivp
 hVpVaOrxre0MBc1TZjFRq6mdouLDF8gfQPwvS6xE4ZYOBlYxxjWC43jIp/zKao2gIuiH
 8TQnm3m3A/iJuHW1ij8RBL+t/sA4oZ50pT7S2N82ihRAbY1+Jh0+TEOtx14Qw5WXb+mD
 S4TQ==
X-Gm-Message-State: AOAM5333L1gievIXTieUYUNzN+8YZ8NN3gGyuSG3uyn0ePi9KsZVHrEl
 ZhITHqiC0aAjA+rMSDoaOAo=
X-Google-Smtp-Source: ABdhPJzSRmsAdAJfqKM1rx3rtWQ3BwdcVcoOIx2BwAwd73G3PfuesUCuUOHS/gsZ0XuzdTE8TspiRQ==
X-Received: by 2002:a63:f0d:0:b0:381:ee45:f557 with SMTP id
 e13-20020a630f0d000000b00381ee45f557mr1622135pgl.436.1647476313279; 
 Wed, 16 Mar 2022 17:18:33 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id
 w21-20020a634755000000b00368f3ba336dsm3585121pgk.88.2022.03.16.17.18.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Mar 2022 17:18:32 -0700 (PDT)
Message-ID: <f9b3ecf5-c2a4-3a7a-5d19-1dbeae5acb69@gmail.com>
Date: Wed, 16 Mar 2022 17:18:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Jiri Pirko <jiri@resnulli.us>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
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



On 3/10/2022 6:23 AM, Hans Schultz wrote:
> This patch set extends the locked port feature for devices
> that are behind a locked port, but do not have the ability to
> authorize themselves as a supplicant using IEEE 802.1X.
> Such devices can be printers, meters or anything related to
> fixed installations. Instead of 802.1X authorization, devices
> can get access based on their MAC addresses being whitelisted.
> 
> For an authorization daemon to detect that a device is trying
> to get access through a locked port, the bridge will add the
> MAC address of the device to the FDB with a locked flag to it.
> Thus the authorization daemon can catch the FDB add event and
> check if the MAC address is in the whitelist and if so replace
> the FDB entry without the locked flag enabled, and thus open
> the port for the device.
> 
> This feature is known as MAC-Auth or MAC Authentication Bypass
> (MAB) in Cisco terminology, where the full MAB concept involves
> additional Cisco infrastructure for authorization. There is no
> real authentication process, as the MAC address of the device
> is the only input the authorization daemon, in the general
> case, has to base the decision if to unlock the port or not.
> 
> With this patch set, an implementation of the offloaded case is
> supplied for the mv88e6xxx driver. When a packet ingresses on
> a locked port, an ATU miss violation event will occur. When
> handling such ATU miss violation interrupts, the MAC address of
> the device is added to the FDB with a zero destination port
> vector (DPV) and the MAC address is communicated through the
> switchdev layer to the bridge, so that a FDB entry with the
> locked flag enabled can be added.

FWIW, we may have about a 30% - 70% split between switches that will 
signal ATU violations over a side band interrupt, like mv88e6xxx will, 
and the rest will likely signal such events via the proprietary tag format.
-- 
Florian
