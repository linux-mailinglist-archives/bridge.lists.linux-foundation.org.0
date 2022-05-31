Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA821538DCA
	for <lists.bridge@lfdr.de>; Tue, 31 May 2022 11:34:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1C1741841;
	Tue, 31 May 2022 09:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAQN-AZLDvhu; Tue, 31 May 2022 09:34:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 61E6D41842;
	Tue, 31 May 2022 09:34:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 16215C0081;
	Tue, 31 May 2022 09:34:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EC12EC002D
 for <bridge@lists.linux-foundation.org>; Tue, 31 May 2022 09:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D99CA40CD3
 for <bridge@lists.linux-foundation.org>; Tue, 31 May 2022 09:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PWWrhtNBbCwX for <bridge@lists.linux-foundation.org>;
 Tue, 31 May 2022 09:34:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2707340A4B
 for <bridge@lists.linux-foundation.org>; Tue, 31 May 2022 09:34:26 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id c19so20515996lfv.5
 for <bridge@lists.linux-foundation.org>; Tue, 31 May 2022 02:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=gw2op1nbtK3mVTVBPWekT+bSJAQAjZ1vIS0T45KFcIQ=;
 b=iXzsl86GOZS+imC0ArAHsoDuo4IhbRivbe1549gE+1CLhRDLVbYVAAnQEHbcFq81oV
 x2a/pQ779e0xE79rsATIaTBWiEqi3l6fmQhBoHqaXerolirKxgx181e2vUrm6zNeKDd8
 FByKn1yB4UJGpvD6/6WesdI7RvOmE7xR299sKuHbQr/mIc6lSaVxuq8lf7CKYpKt+Whi
 IcAoU1G0kUR+IDBlnXPcUEmhXQ2p6IdPHJw2YhBaICZ5/tewHdA7QasPcMPvn5GEIQxC
 CBAn0nAyc2OHRZfk/YBCtXJRqaQ4fABslZ7cFsN5C/0S94I9Mo6HAQ4hFlva1tif02BQ
 yMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=gw2op1nbtK3mVTVBPWekT+bSJAQAjZ1vIS0T45KFcIQ=;
 b=WOqPAlNWuZH1RIQfQwvgYbPMXicop1sWtogNSHCM1GQ8clOJV4s4/MLRFc7Edx+W9H
 AbrRVlu7+ZDZbE49fmT1DUQSeQAh+Th6Z9GLOtZLvohtB9mZexjtpSYBadiS5QnzpCEO
 9zmzR/JY7IvAMJt+tl++1zEKqNjrATyuqOT9Vhl6ePgGKYHfkmPePreBkhyKJAQeZQRA
 0E5i97joGs9KjmR2uq6pyJu9l5+/lpEW9pkdaT5LUPB31+Ha/RpgAh6SfNBvpWoKEGLS
 3quT24yPa19Rlghw6qYwsQ9Ho0AgPEGtMrtoZO54Ej7YsL0UUuHSDTNEWHcyOnXjorRf
 Gr5w==
X-Gm-Message-State: AOAM532kILnmxUT++Re5g01a5d4/i8cpitJuwRLhGGLRNIyGvKbTiPmh
 bhapGpGIyIAq5upEIeqe2y0=
X-Google-Smtp-Source: ABdhPJzJ/ak3w0z3FhjqS0lhkcplqcwKg+JYRuQYWd3Ojks/86koCzhsb75WL8GDmEHfwS+cJix4/A==
X-Received: by 2002:a05:6512:33cb:b0:477:aa55:5f3e with SMTP id
 d11-20020a05651233cb00b00477aa555f3emr44429766lfg.488.1653989663734; 
 Tue, 31 May 2022 02:34:23 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 w25-20020a197b19000000b00477c1172063sm2855486lfc.165.2022.05.31.02.34.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 May 2022 02:34:23 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YpCgxtJf9Qe7fTFd@shredder>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder> <86sfov2w8k.fsf@gmail.com>
 <YpCgxtJf9Qe7fTFd@shredder>
Date: Tue, 31 May 2022 11:34:21 +0200
Message-ID: <86sfoqgi5e.fsf@gmail.com>
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

> Just to give you another data point about how this works in other
> devices, I can say that at least in Spectrum this works a bit
> differently. Packets that ingress via a locked port and incur an FDB
> miss are trapped to the CPU where they should be injected into the Rx
> path so that the bridge will create the 'locked' FDB entry and notify it
> to user space. The packets are obviously rated limited as the CPU cannot
> handle billions of packets per second, unlike the ASIC. The limit is not
> per bridge port (or even per bridge), but instead global to the entire
> device.

Btw, will the bridge not create a SWITCHDEV_FDB_ADD_TO_DEVICE event
towards the switchcore in the scheme you mention and thus add an entry
that opens up for the specified mac address?
