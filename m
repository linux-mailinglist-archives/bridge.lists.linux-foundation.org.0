Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B0556A98E
	for <lists.bridge@lfdr.de>; Thu,  7 Jul 2022 19:26:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73868840D8;
	Thu,  7 Jul 2022 17:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73868840D8
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=wUfdehM4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UMRaDyTspeqs; Thu,  7 Jul 2022 17:26:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C5D268402D;
	Thu,  7 Jul 2022 17:26:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5D268402D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 523C6C007D;
	Thu,  7 Jul 2022 17:26:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F9DEC002D
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 17:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D038D4103F
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 17:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D038D4103F
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=wUfdehM4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ie-1dK4Xhl6H for <bridge@lists.linux-foundation.org>;
 Thu,  7 Jul 2022 17:26:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F1C340220
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F1C340220
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 17:26:38 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id r6so12594883edd.7
 for <bridge@lists.linux-foundation.org>; Thu, 07 Jul 2022 10:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:user-agent:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=3LZxcQs9nOMkFoDos2+PgU3t6nZSk06DoiTQtWvijMk=;
 b=wUfdehM4WiupWRrJlT/Hxm6rzZgFZZSVUTcXcsGx5Z6aCq0BRBsQnvHtQValrPkRdT
 Ei0yruYzS+D2av84NoQ+xq3KPhNQLFH9vwI2nbpEj+6ndn1fpaL1Am6ctGiS89Ej1qis
 e6DyqA2NXmDUWlw9lwuHo3iSFGYQVZwsMlTzqJu5ZPnhLN5zK6qpxeWpokt5FE3QgOjB
 aBhMD3AwZ5OGOguAGSguB7t2z7JiQ/VYPt4Ff8IH3z6/olNS2rHzItkgR4PaUvXSkMl6
 xUjEY3/FgLD7k38wfk2c0FQKYUpqjd5cJD0tXbBxdv/gDXJbUIc6GoHuFUZXLwomcu3f
 MJGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:user-agent:in-reply-to
 :references:message-id:mime-version:content-transfer-encoding;
 bh=3LZxcQs9nOMkFoDos2+PgU3t6nZSk06DoiTQtWvijMk=;
 b=dUPtNfawRkz6oTxbR3SJkK6EVl9kRjFss5s8cgoa/DHpsl3ZlwfMv+2jAJZf143ano
 HwSPC8Eb7OFxt5Qf766PW7BihXEWegw8ZRCW5JAeSMviEtuEa3XLLxNpc610ILDKoVtS
 v7/lx6KGekdt/pl+iPAKIXwFMrcOorg3PrBZpt5aQQgStKQw7IcHvuFu6GCsEN/g62DF
 JxVEVD9F0TKpG057GIh6V5a5iRlo0SzUmC4lSspSr/hK+fZt+5bup6P+xwlEFhtAt4oJ
 oMDiR3QVrylrwqtpbN8VP1thTYXAqAGNSgrtcdij/LpV6pZWvjmPu3uErHmorFEQHZRQ
 iplw==
X-Gm-Message-State: AJIora/AnIMVgUt6kyK21SQ0Rr1MxIXOsb1yoXMoRmZVl4FDHoSuBRh0
 BOf+eFAcyfOVnhWCebTr4vWV6w==
X-Google-Smtp-Source: AGRyM1u12ybciGXsCapwSAqPM5BzxbOHsPWUV81XgBJottPf//sBeZ4RHpZ67iJUA/HNVpYN0jzC+Q==
X-Received: by 2002:aa7:cc03:0:b0:435:5574:bf30 with SMTP id
 q3-20020aa7cc03000000b004355574bf30mr62912119edt.15.1657214796964; 
 Thu, 07 Jul 2022 10:26:36 -0700 (PDT)
Received: from [127.0.0.1] ([93.123.70.11]) by smtp.gmail.com with ESMTPSA id
 k12-20020a17090666cc00b007041e969a8asm19241282ejp.97.2022.07.07.10.26.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Jul 2022 10:26:36 -0700 (PDT)
Date: Thu, 07 Jul 2022 20:26:33 +0300
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Vladimir Oltean <olteanv@gmail.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <20220707171507.pojkwqhwqk5u6mmn@skbuf>
References: <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
 <86fskyggdo.fsf@gmail.com>
 <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
 <86v8tu7za3.fsf@gmail.com>
 <4bf1c80d-0f18-f444-3005-59a45797bcfd@blackwall.org>
 <20220706181316.r5l5rzjysxow2j7l@skbuf>
 <7cf30a3e-a562-d582-4391-072a2c98ab05@blackwall.org>
 <20220706202130.ehzxnnqnduaq3rmt@skbuf>
 <fe456fb0-4f68-f93e-d4a9-66e3bc56d547@blackwall.org>
 <37d59561-6ce8-6c5f-5d31-5c37a0a3d231@blackwall.org>
 <20220707171507.pojkwqhwqk5u6mmn@skbuf>
Message-ID: <01FCBF77-AD39-4A0F-93AC-629E7269D950@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Hans Schultz <schultz.hans@gmail.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
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

On 7 July 2022 20:15:07 EEST, Vladimir Oltean <olteanv@gmail=2Ecom> wrote:
>Hi Nikolay,
>
>On Thu, Jul 07, 2022 at 05:08:15PM +0300, Nikolay Aleksandrov wrote:
>> On 07/07/2022 00:01, Nikolay Aleksandrov wrote:
>> > On 06/07/2022 23:21, Vladimir Oltean wrote:
>> >> On Wed, Jul 06, 2022 at 10:38:04PM +0300, Nikolay Aleksandrov wrote:
>> [snip]
>> > I already said it's ok to add hard configurable limits if they're don=
e properly performance-wise=2E
>> > Any distribution can choose to set some default limits after the opti=
on exists=2E
>> >=20
>>=20
>> Just fyi, and to avoid duplicate efforts, I already have patches for gl=
obal and per-port software
>> fdb limits that I'll polish and submit soon (depending on time availabi=
lity, of course)=2E If I find
>> more time I might add per-vlan limits as well to the set=2E They use em=
bedded netlink attributes
>> to config and dump, so we can easily extend them later (e=2Eg=2E differ=
ent action on limit hit, limit
>> statistics etc)=2E
>
>So again, to repeat myself, it's nice to have limits on FDB size, but
>those won't fix the software bridges that are now out in the open and
>can't have their configuration scripts changed=2E
>
>I haven't had the time to expand on this in a proper change yet, but I
>was thinking more along the lines of adding an OOM handler with
>register_oom_notifier() in br_fdb_init(), and on OOM, do something, like
>flush the FDB from all bridges=2E There are going to be complications, it
>will schedule switchdev, switchdev is going to allocate memory which
>we're low on, the workqueues aren't created with WQ_MEM_RECLAIM, so this
>isn't necessarily going to be a silver bullet either=2E But this is what
>concerns me the most, the unconfigured bridge killing the kernel so
>easily=2E As you can see, with an OOM handler I'm not so much trying to
>impose a fixed limit on FDB size, but do something sensible such that
>the bridge doesn't contribute to the kernel dying=2E

Hi Vladimir,
Sounds good to me, the fdb limits have come up multiple times in the past =
so I decided=20
to finally add them and build from there, with them configured oom shouldn=
't be hit=2E
These limits have never been present and people are fine (everyone deals w=
ith or leaves it), but I'll be happy to review and ack such changes=2E I ho=
pe you can correlate the oom and the bridge fdbs, not
just blindly flushing as that can be problematic if you plan to have it en=
abled by default=2E

Cheers,
  Nik
