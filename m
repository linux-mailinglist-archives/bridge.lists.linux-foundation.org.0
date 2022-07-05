Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA13156720B
	for <lists.bridge@lfdr.de>; Tue,  5 Jul 2022 17:06:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E7D38261C;
	Tue,  5 Jul 2022 15:06:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E7D38261C
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=PoKHZYvW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oskGuyOMgA7v; Tue,  5 Jul 2022 15:06:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E52FD827FD;
	Tue,  5 Jul 2022 15:06:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E52FD827FD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 762EEC007C;
	Tue,  5 Jul 2022 15:06:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6A4BAC002D
 for <bridge@lists.linux-foundation.org>; Tue,  5 Jul 2022 15:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37228826FB
 for <bridge@lists.linux-foundation.org>; Tue,  5 Jul 2022 15:06:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37228826FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SPZJJDKoLL5n for <bridge@lists.linux-foundation.org>;
 Tue,  5 Jul 2022 15:06:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 606D38261C
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 606D38261C
 for <bridge@lists.linux-foundation.org>; Tue,  5 Jul 2022 15:06:05 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id z12so8384103wrq.7
 for <bridge@lists.linux-foundation.org>; Tue, 05 Jul 2022 08:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mgLijbGiv7w5WcB394gTGKOAZY0RuPs+Rksu0EAHhP0=;
 b=PoKHZYvWz8UNSDm7/4be0e1yTfsfKdrINSRSDucpfsLdJhGiMe4Dy8Fn79y/ZFH8ed
 EtXbgx7l8oqOdp8GQsG/GP9cnFhttUWrNJAqgGdnx+vhlqmVU8TA4ygdTMptBJjhOgmd
 lDDnH/VhLQVViWoTa4CfM3Lr9AhmExeui8ZeEV+P105VN7GEQQID9i7OV7a3YKX7ki6m
 ZjUPEkHwwBJguriMDYvvbafm4iqlpbwT+zv9w3M+YviR6xccU7wADVRHY9qF40xSwXhR
 arbZHnCKSdVkhy+d2Y33ulgxl9QDO/zinDGBVgYW7DogjO8frZpZ8JYSFDMtHLsLhDfj
 5Pcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mgLijbGiv7w5WcB394gTGKOAZY0RuPs+Rksu0EAHhP0=;
 b=vojjPz4inRt4reqkfIKkezJV23Jj0Q8UGnbYxSjmYZKIRrfSy/KBh+oIwZXcjsxixE
 +7mO5eZBHlynBlJYV553+2gzcCcbbfG3C2ZeaHSRa0Ndrwb9//XaiH9waohnEZutHPik
 /M2wHDY1IB8PwJYIri6MN8rB903jZJ3odgOy2BsV8UoaYZs2HyFzfJDyoisLqFaf5kqn
 2KrdZbeOroVCuI5GtpSBw9ZwcOp0YGCNZPAAXGtBd/MBDrLbt239DCUcnDn/jFXP5rMI
 sXTiYJ2rn0fbITj9+rZjE0MnD0O0Gi0kSDCmI+XH0necxp3VFNTWwNFGykFugK/8ILn+
 5r7Q==
X-Gm-Message-State: AJIora9gi/iXAKPL7PWoYXVCPvU1hIob22UIEQqupr0ivE0evzfsaByI
 NzvKcwMxfHugjRWsW8nYiQGx/u6s/S6t09B8DwA=
X-Google-Smtp-Source: AGRyM1tMCOqLTke6TsDXgHYxIwD9oqUmgJVOT1lWwBK5iPyT9H0GTNI4QtbhuM0kJD8N/fGbNKEtr6lSsyuVHIklGYA=
X-Received: by 2002:a5d:4304:0:b0:21b:9b2c:be34 with SMTP id
 h4-20020a5d4304000000b0021b9b2cbe34mr34682824wrq.577.1657033563457; Tue, 05
 Jul 2022 08:06:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
 <20220627180557.xnxud7d6ol22lexb@skbuf>
 <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
In-Reply-To: <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
From: Hans S <schultz.hans@gmail.com>
Date: Tue, 5 Jul 2022 17:05:52 +0200
Message-ID: <CAKUejP5u9rrH8tODODG0a1PLXfLhk7NLe5LUYkefkbs15uU=BQ@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH V3 net-next 3/4] net: dsa: mv88e6xxx:
	mac-auth/MAB implementation
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

Hi, does anybody know what it going on with this variable?
struct dsa_port *dp ->ageing_time;

I experience that it changes value like a factor ~10 at times.
