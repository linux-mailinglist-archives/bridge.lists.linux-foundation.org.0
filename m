Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A810C56B2DB
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 08:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E7CF403F9;
	Fri,  8 Jul 2022 06:38:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E7CF403F9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Y+HfLILv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3gGv-djOzjf; Fri,  8 Jul 2022 06:38:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BD0F740207;
	Fri,  8 Jul 2022 06:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD0F740207
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 71456C007D;
	Fri,  8 Jul 2022 06:38:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3117EC002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 06:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05A8F61346
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 06:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05A8F61346
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Y+HfLILv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mEQZp-L4o5dj for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 06:38:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A09C61343
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A09C61343
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 06:38:44 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id o4so29192005wrh.3
 for <bridge@lists.linux-foundation.org>; Thu, 07 Jul 2022 23:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6MNY7diHJ+MnWxKcDHqJkKosV/mr66iz8oydZliBRmQ=;
 b=Y+HfLILvoGNJKQwKFAtwItKF+nCU+J9436rxhfgzKj8LxGXYwEyhG9L5pC/GGnKcdD
 OakYQ5yA1HWawR+S2zFE2a6CJG4WW0xpCZKA5ZEAV9jE47k/LUyRUKiGiG3uKwijbCKU
 NV4KIyrtkEqVcSyMJch5SBJa58tVqjxP7xToKLhCOPnCSfhpg/F4B2xs7hIpHmVkommW
 Zt5rqJZpPIpwTgHyjxaWFhu27gs5QHkOPa6NnNwBF2l0y4vu0P+y0lmOKc7ZRKyjNWMK
 XqtyfkLnqIfI219BNbG+a7HAZwfByoQoCrQ64uSG9r8XWGu9IW0ObRyJKSPD5Zg8lGq9
 iG2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6MNY7diHJ+MnWxKcDHqJkKosV/mr66iz8oydZliBRmQ=;
 b=4wYqFfa0zkuWZzGnJsWirBJ51RryAQ2lGuLgk7C1y6LBRz1ZxoVe6TYzyqOqVRNdw8
 yk9NIbchsCXgoNulPgKLXkqfXgsUaC2+1v3AMf5W/7WW0PnfMEcsvvKjtgEmWmQUQYnE
 Ndu42njcbqTO5cV50ctuFh6LxPmDnGfztwo+1lnWxjabvZzuny6vYa2MIATPibhZu8hy
 Ty1SokXDFZSQscfoGknNxz53gDFIONYO6pAcxREbd1OtNWSA4F0iXsBEyxkyyfK2ornf
 hMB2DesKPD1y2pkBAIhhCJgmBeqrjtilNRnAZbDWRESjYWgI4HxXLCooKUqp8/GtMT8d
 rUDw==
X-Gm-Message-State: AJIora//WFwUF9zuF5T1e1K8KWXHbKjGPVW5CllVX2tx5NpSxmRikCR4
 q18s36myqq5cYdxvz0Y7XavTW5V3kwP80rZVVSI=
X-Google-Smtp-Source: AGRyM1v1scyfjp6+EGm8qT5gCJ8TPVBCMuX9yYoD0E0kmstb/lo3xGd1jIUmhQVuWt/vLqRSvbuExBzmMqpCiMTuhMM=
X-Received: by 2002:adf:dc0d:0:b0:21d:ea5:710f with SMTP id
 t13-20020adfdc0d000000b0021d0ea5710fmr1684518wri.48.1657262322403; Thu, 07
 Jul 2022 23:38:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
 <86zgj6oqa9.fsf@gmail.com>
 <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
 <86fskyggdo.fsf@gmail.com>
 <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
 <86v8tu7za3.fsf@gmail.com>
 <4bf1c80d-0f18-f444-3005-59a45797bcfd@blackwall.org>
 <20220706181316.r5l5rzjysxow2j7l@skbuf>
 <7cf30a3e-a562-d582-4391-072a2c98ab05@blackwall.org>
 <20220706202130.ehzxnnqnduaq3rmt@skbuf>
 <fe456fb0-4f68-f93e-d4a9-66e3bc56d547@blackwall.org>
 <37d59561-6ce8-6c5f-5d31-5c37a0a3d231@blackwall.org>
In-Reply-To: <37d59561-6ce8-6c5f-5d31-5c37a0a3d231@blackwall.org>
From: Hans S <schultz.hans@gmail.com>
Date: Fri, 8 Jul 2022 08:38:31 +0200
Message-ID: <CAKUejP4P6-5gYg2owdbcNLKwYvsimg6L-Y_izUxfq=Uz=K_JDg@mail.gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, "David S. Miller" <davem@davemloft.net>
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

On Thu, Jul 7, 2022 at 4:08 PM Nikolay Aleksandrov <razor@blackwall.org> wrote:
>
> On 07/07/2022 00:01, Nikolay Aleksandrov wrote:
> > On 06/07/2022 23:21, Vladimir Oltean wrote:
> >> On Wed, Jul 06, 2022 at 10:38:04PM +0300, Nikolay Aleksandrov wrote:
> [snip]
> > I already said it's ok to add hard configurable limits if they're done properly performance-wise.
> > Any distribution can choose to set some default limits after the option exists.
> >
>
> Just fyi, and to avoid duplicate efforts, I already have patches for global and per-port software
> fdb limits that I'll polish and submit soon (depending on time availability, of course). If I find
> more time I might add per-vlan limits as well to the set. They use embedded netlink attributes
> to config and dump, so we can easily extend them later (e.g. different action on limit hit, limit
> statistics etc).
>

Sounds good, I will just limit the number of locked entries in the
driver as they are not controllable from the bridge. :-)
