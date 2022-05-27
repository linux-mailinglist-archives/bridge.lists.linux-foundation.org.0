Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15727535BF0
	for <lists.bridge@lfdr.de>; Fri, 27 May 2022 10:52:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2D3F4194B;
	Fri, 27 May 2022 08:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7LTcNPFM4eNM; Fri, 27 May 2022 08:52:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D8AF44190D;
	Fri, 27 May 2022 08:52:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A0DAEC007E;
	Fri, 27 May 2022 08:52:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21A64C002D
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 08:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0112860A8A
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 08:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRAsWAuQK92m for <bridge@lists.linux-foundation.org>;
 Fri, 27 May 2022 08:52:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AD34607BC
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 08:52:31 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id c19so5916224lfv.5
 for <bridge@lists.linux-foundation.org>; Fri, 27 May 2022 01:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=d50SivsluZ6NgKs+usTsgrAsMJ0dcEpxRZNyKV1rSXs=;
 b=KEjqvKVgBn8GA2gtH494LAiAmb/ydkqhE0qixQQg7udNkBMreayccOL8QGT4+9jwAo
 t8kZxqgSZGtl09ng5HwGDPmcUrry5qYWoQjVCfjWq2U9abNeAOXw82YhtjH3SLyTERU+
 B/N0eFWNvI/SmJsWRZULqMzx8dgQrlM6Bo51fssmhbBIauoZtu3j8cZXvtsOpge73XXu
 tzpAH6CVtudOd4a3v8R0kMgO+jBiyzDf9eFQ693ZBSzocZJwyCE9hTjpmDZsc0qfC9eJ
 8/fP8fRmLPWGAkTswoDCLFgUX9xDlMKhAQOomAKqOWkV12euJV61I3dShddEfEn7HxoV
 qnIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=d50SivsluZ6NgKs+usTsgrAsMJ0dcEpxRZNyKV1rSXs=;
 b=gjjdni1PubWO+bXnXF1zOL84leu5chFyikbaTgi2WpkjKRJf2XJlwTPc4ASzKWDwWd
 ZwMGnnlyji6I9nQgciB6OPBEIqAEqPxH5xnbA1bTmNnmFJ6JMT7Rffr13CtZnEiuHoCY
 T4oAZIw6BDgURucHKDh3sDkfnE0oJaLa60SpxidiILhsrOkvG228jCozQhssqd8NzYev
 mY1Vc3KHsEXcf4jFL/N8hDvzm9EkwXfe2kDjQ5zCT69yRQ2nfLxygRUXO+6pRWWVm+ZH
 6U90iOvjiP0K/kRLZ7BiQVCO0/OliaWgw3tgAYw63p/xVdsSa+8r7BoWOTSLZXNWKkDh
 4V4Q==
X-Gm-Message-State: AOAM532r4O7N9dO6UF3cUu+uFHXcoHXncGw4Ot1TEXK0BV8u+t+mgVKw
 x7px0d+ufkkE0SAWK6DR+08=
X-Google-Smtp-Source: ABdhPJyX5vZzhLcAN2wrY2aDt2lZJIj7HuWJAQA9EdkuCUm2ulwuRSxecwK2qF8CnhTd0wQ3Cr3Tfw==
X-Received: by 2002:a05:6512:3f8c:b0:45d:cb2a:8779 with SMTP id
 x12-20020a0565123f8c00b0045dcb2a8779mr30514470lfa.499.1653641549871; 
 Fri, 27 May 2022 01:52:29 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 s15-20020a056512314f00b0047255d211fasm772938lfi.297.2022.05.27.01.52.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 May 2022 01:52:29 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <Yo+LAj1vnjq0p36q@shredder>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder>
Date: Fri, 27 May 2022 10:52:27 +0200
Message-ID: <86sfov2w8k.fsf@gmail.com>
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

On tor, maj 26, 2022 at 17:13, Ido Schimmel <idosch@idosch.org> wrote:
> On Tue, May 24, 2022 at 05:21:41PM +0200, Hans Schultz wrote:
>> Add an intermediate state for clients behind a locked port to allow for
>> possible opening of the port for said clients. This feature corresponds
>> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
>> latter defined by Cisco.
>> Locked FDB entries will be limited in number, so as to prevent DOS
>> attacks by spamming the port with random entries. The limit will be
>> a per port limit as it is a port based feature and that the port flushes
>> all FDB entries on link down.
>
> Why locked FDB entries need a special treatment compared to regular
> entries? A port that has learning enabled can be spammed with random
> source MACs just as well.
>
> The authorization daemon that is monitoring FDB notifications can have a
> policy to shut down a port if the rate / number of locked entries is
> above a given threshold.
>
> I don't think this kind of policy belongs in the kernel. If it resides
> in user space, then the threshold can be adjusted. Currently it's hard
> coded to 64 and I don't see how user space can change or monitor it.

In the Mac-Auth/MAB context, the locked port feature is really a form of
CPU based learning, and on mv88e6xxx switchcores, this is facilitated by
violation interrupts. Based on miss violation interrupts, the locked
entries are then added to a list with a timer to remove the entries
according to the bridge timeout.
As this is very CPU intensive compared to normal operation, the
assessment is that all this will jam up most devices if bombarded with
random entries at link speed, and my estimate is that any userspace 
daemon that listens to the ensuing fdb events will never get a chance
to stop this flood and eventually the device will lock down/reset. To
prevent this, the limit is introduced.

Ideally this limit could be adjustable from userspace, but in real
use-cases a cap like 64 should be more than enough, as that corresponds
to 64 possible devices behind a port that cannot authenticate by other
means (printers etc.) than having their mac addresses white-listed.

The software bridge behavior was then just set to correspond to the
offloaded behavior, but after correspondence with Nik, the software
bridge locked entries limit will be removed.
