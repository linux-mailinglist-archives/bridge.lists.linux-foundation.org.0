Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A3B536593
	for <lists.bridge@lfdr.de>; Fri, 27 May 2022 18:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80B89606A0;
	Fri, 27 May 2022 16:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PcQ8Pvc_IV3j; Fri, 27 May 2022 16:01:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2A32C616ED;
	Fri, 27 May 2022 16:01:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E8091C007E;
	Fri, 27 May 2022 16:01:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 405B6C002D
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 16:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28622616ED
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 16:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eqzdv2WdYyHN for <bridge@lists.linux-foundation.org>;
 Fri, 27 May 2022 16:01:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4984606A0
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 16:01:00 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id e4so5372542ljb.13
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 09:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=2phuWBtcTkzKGfEFPcHjL5qNni//IzOpMEfDTaY87Dg=;
 b=a/6lEtQeNSwtgd+B0HQwGamPbSXYBak0YscNWlZH2/cUpwdbbAjCMlEDfXxPMCmOrv
 C+4+F0Z4eYHmr3iiuXdmt5mZ63JjkJlfLjAAAaciLrMQQRSxV9AHtoP3rSCsNUJtqdHI
 FlUW5jUaj6AUAs6lTwHCbeEbdjL+NbmODSkcWbukTJ6GMWwdAYtg5ZUaGIeoz8ADApXv
 scpsabiUuF162UFICurltoKqm8/0kcfzUpxxe/6aYV3VdvJGbK3o+EwnMdMVkv5Eq7yM
 TyFCOAZWRb4lDVyaDzF8Hhkfm70+iMyBVKw3U67S2GVj5jnyVIaeU++KAmPOT0wMrN0L
 RJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=2phuWBtcTkzKGfEFPcHjL5qNni//IzOpMEfDTaY87Dg=;
 b=SvGtTldmjHQ+n6KCPEIGtsRthzMdVCEXCDrSajTbxoYHyDjkwmEG8Arj91cguDkyMM
 pXvo8xPk7ddFSVB9ER+HK83ZH9LmCogORQGrjQqAcv54OJcJXxyd1NIvmqfK3VOmIIbi
 yiuRbUDCTRV5t1gHcwZv9w6Lg/obHfQwBrwXQYFjmOAyRcNz3VSDmRHF9cGul+nvA/bl
 qsb17JcWCAGw06cmMqMh0XMILqC28fhnFDUpkBgvSd1gi2eVsKIeKiiS5FCksLv7uuJ5
 ytcSdorD8FTCBMeSMQVsgmrVqa8/Sd2TYdcVSma20ZUEmWyZaZyYvun8bY57Rkoc02XM
 L60Q==
X-Gm-Message-State: AOAM532FWwxfA2cS/Q0wmJk+JsY7C5MiBSNqd31LLtXF8rGN/aaVqy90
 EBv8nhOwfMoPXdO1AJ2Qhno=
X-Google-Smtp-Source: ABdhPJycHoLeVBSFT6HYlEmAjtp5jZp5ZTK0nv+yLI/11Jm6IOTFbrJhS9SBvMptdgirewqC4QKNzQ==
X-Received: by 2002:a2e:81ca:0:b0:255:44a9:8bea with SMTP id
 s10-20020a2e81ca000000b0025544a98beamr140022ljg.205.1653667258651; 
 Fri, 27 May 2022 09:00:58 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 i20-20020a0565123e1400b0047426f59b33sm916670lfv.252.2022.05.27.09.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 May 2022 09:00:58 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YpCgxtJf9Qe7fTFd@shredder>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder> <86sfov2w8k.fsf@gmail.com>
 <YpCgxtJf9Qe7fTFd@shredder>
Date: Fri, 27 May 2022 18:00:56 +0200
Message-ID: <86a6b33qyv.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

>
> As far as the bridge is concerned, locked entries are not really
> different from regular learned entries in terms of processing and since
> we don't have limits for regular entries I don't think we should have
> limits for locked entries.
>
> I do understand the problem you have in mv88e6xxx and I think it would
> be wise to hard code a reasonable limit there. It can be adjusted over
> time based on feedback and possibly exposed to user space.
>
> Just to give you another data point about how this works in other
> devices, I can say that at least in Spectrum this works a bit
> differently. Packets that ingress via a locked port and incur an FDB
> miss are trapped to the CPU where they should be injected into the Rx
> path so that the bridge will create the 'locked' FDB entry and notify it
> to user space. The packets are obviously rated limited as the CPU cannot
> handle billions of packets per second, unlike the ASIC. The limit is not
> per bridge port (or even per bridge), but instead global to the entire
> device.

Ahh, I see. I think that the best is for those FDB entries to be created
as dynamic entries, so that user-space does not have to keep track of
unauthorized entries.
Also the mv88e6xxx chipsets have a 'hold at one' feature, for authorized
entries, so that if a device goes quiet after being authorized the
driver can signal to the software bridge and further to userspace that
an authorized device has gone quiet, and the entry can then be
removed. This though requires user added dynamic entries in the ATU, or
you can call it synthetically 'learned' entries.
