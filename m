Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C37C8563767
	for <lists.bridge@lfdr.de>; Fri,  1 Jul 2022 18:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E897A6141A;
	Fri,  1 Jul 2022 16:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E897A6141A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=cRRLhPkA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPV_bnEhMl-p; Fri,  1 Jul 2022 16:07:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7D67F61411;
	Fri,  1 Jul 2022 16:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D67F61411
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1A3D6C0039;
	Fri,  1 Jul 2022 16:07:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFFC3C002D
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 16:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B589405C2
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 16:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B589405C2
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=cRRLhPkA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dObD-kwMlm-D for <bridge@lists.linux-foundation.org>;
 Fri,  1 Jul 2022 16:07:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3249040145
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3249040145
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 16:07:23 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id e28so3943562wra.0
 for <bridge@lists.linux-foundation.org>; Fri, 01 Jul 2022 09:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fHKMope5SWjzop2Rp2Epmmp+QmZit+SL7styTSQamZY=;
 b=cRRLhPkA26KHCS0gtvJXn447hDg4hRDT5oKadmE0G58kf6IdaSYc1buPIirB/Blm+H
 bVU6AvPAFeGP+2Zsv2TIQaeOskpNDYvxUMLd30+e1rWqJK1XxnEmbGkzDOxOchJd/VIH
 xZKWBKD0He04ZcEFAPOhPCvGhYx9w5ONil9zZu148QunDcBxDXctq6HkqU2yqD7GEOs/
 w9ih4spSeU9JtlzmQkpDR0LmtgiswNebBF/A+7yc7I5HAis+v6a4ykAtPgs/V4evTugq
 DJMXJeUJStNwWwyVyBWBuP0lEenR74t52c7fjmNRXvUafpRZbrJ3aLsYHyf1fTU3vAhq
 6D2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fHKMope5SWjzop2Rp2Epmmp+QmZit+SL7styTSQamZY=;
 b=Qw3yc6jGfIYmKizw3pHg0KLaOit2QD9P2w11u8pjCOOZ335/DgiSWyNYhEsW1VBiJf
 cFlHZ8hQM6L1N/Xg4hqfl6iCB6DB9vwNqY8uuucmpryHHZYJtmw+DqwwobrVWlitc3NH
 uIdYIdVr3ZQ0tith1l1iQxQFHV3+xkD3tbbTZuKGwe3UqPc2b8dpCzgzuQLPt3dCEidE
 06XAIlE31Kv2vjvo8OTlcwP1j+rLdOOC/lk3+xmquVhCE8+wnNKb3WBV06GBWXdXoI7a
 9u62weoJgfBWTnYx/EFaNMp1gAiGsd3gTrh0BpAJT0DdcD1KYDj53QpMLKEZQj6VPoU6
 n6FA==
X-Gm-Message-State: AJIora+XyVm5Ty+pWhAoRngp81vcnlAOEA7+pF2HxveDB1YvET8pOvQT
 uwiug1ZE3cKNfTXp8lmjR6Gt9fF7LsnFxulx1eQ=
X-Google-Smtp-Source: AGRyM1uldNpApaYepYj4cywZLC25EKKS3tiGxNTcIgJvCeFs2LW2RPgQ8/DwRpMTtIk5voB+JRx3hUC1k+/T7SYJ90E=
X-Received: by 2002:a5d:4c90:0:b0:21b:8b2a:1656 with SMTP id
 z16-20020a5d4c90000000b0021b8b2a1656mr14427680wrs.249.1656691641354; Fri, 01
 Jul 2022 09:07:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
In-Reply-To: <Yr778K/7L7Wqwws2@shredder>
From: Hans S <schultz.hans@gmail.com>
Date: Fri, 1 Jul 2022 18:07:10 +0200
Message-ID: <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

There is several issues when learning is turned off with the mv88e6xxx driver:

Mac-Auth requires learning turned on, otherwise there will be no miss
violation interrupts afair.
Refreshing of ATU entries does not work with learning turn off, as the
PAV is set to zero when learning is turned off.
This then further eliminates the use of the HoldAt1 feature and
age-out interrupts.

With dynamic ATU entries (an upcoming patch set), an authorized unit
gets a dynamic ATU entry, and if it goes quiet for 5 minutes, it's
entry will age out and thus get removed.
That also solves the port relocation issue as if a device relocates to
another port it will be able to get access again after 5 minutes.

On Fri, Jul 1, 2022 at 3:51 PM Ido Schimmel <idosch@nvidia.com> wrote:
>
> On Fri, Jul 01, 2022 at 09:47:24AM +0200, Hans S wrote:
> > One question though... wouldn't it be an issue that the mentioned
> > option setting is bridge wide, while the patch applies a per-port
> > effect?
>
> Why would it be an issue? To me, the bigger issue is changing the
> semantics of "locked" in 5.20 compared to previous kernels.
>
> What is even the use case for enabling learning when the port is locked?
> In current kernels, only SAs from link local traffic will be learned,
> but with this patch, nothing will be learned. So why enable learning in
> the first place? As an administrator, I mark a port as "locked" so that
> only traffic with SAs that I configured will be allowed. Enabling
> learning when the port is locked seems to defeat the purpose?
>
> It would be helpful to explain why mv88e6xxx needs to have learning
> enabled in the first place. IIUC, the software bridge can function
> correctly with learning disabled. It might be better to solve this in
> mv88e6xxx so that user space would not need to enable learning on the SW
> bridge and then work around issues caused by it such as learning from
> link local traffic.
