Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 456424E3D1B
	for <lists.bridge@lfdr.de>; Tue, 22 Mar 2022 12:01:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 932EC41723;
	Tue, 22 Mar 2022 11:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbLBhmnEqvT6; Tue, 22 Mar 2022 11:01:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C59BA41747;
	Tue, 22 Mar 2022 11:01:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8804BC0082;
	Tue, 22 Mar 2022 11:01:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADFB3C000B
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 11:01:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84FEA401FB
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 11:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fw3PjSKBP7LE for <bridge@lists.linux-foundation.org>;
 Tue, 22 Mar 2022 11:01:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0532400B9
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 11:01:19 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id s25so23426998lji.5
 for <bridge@lists.linux-foundation.org>; Tue, 22 Mar 2022 04:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Gkv/Enp/IZmxcfofAOCjTBnszxX0aQMOLZxHcfoa6sI=;
 b=cjd3KI2i21VdxnTAX1vYFQv6InII+4UIOpRkW0Ttkn25FiUgiZzihokuoLn2u36vWj
 Q3ZcqOqeG+xvuevBbHaGOQjtlM2kZlqMXQpfmCDp5+BFaBIovgfjJvWYTBm+/abwkyMC
 sUF1AnOXneFlisQihQI5QzuITbgQNp7MbxSJL4CGsdoiW5ou4V6EYBz7zzaswNhIebRI
 McrLmmO5VoNznl/5PtHFYtSFS3d99FUJFBMnrbl6JezgidCYPNegRQWJuRtlu+OB+qbp
 xuqAjvzNLJAB8ow04SzHI9MIY4q6hESh0kWlvf0iPg0fSciu0AY/dbli7YUz3IjbpgnT
 irdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Gkv/Enp/IZmxcfofAOCjTBnszxX0aQMOLZxHcfoa6sI=;
 b=N1ZWCnpDo1084CKt6s+iNO85uwJsLq0xSTutcvWXBfQhkiP50/U1g6zqpfgA+H8gII
 KlmLCpOGq9SLyLUxVMHxhixypyykN33ytwTWImI+uh6eypzEdjZToeYLSVRtfeWt6MTh
 N/cFOMh+CkEA6Ru8LG4HeqW3/nH74WdJLioMFwp6JvCn0STnglSYr0DerYQvQpIkd/vn
 i/F7SPIggppdGyCZF/isgHLY1py3kZ0QTziIyjrrVkwwlpcWRzyhm0nyfO6/sBfX+TCc
 LjBM1eqveRQRRu+2+iB2+LnYB6m/SYHttAdPkR2ALw7aYJMRY+/9LjPGC3POqcQrTrjg
 KHaw==
X-Gm-Message-State: AOAM531W+PutessoNLh/sPcsbfZmv3q1MOmUxksUAN0wUrhb5lWA61vH
 4NTgFfmK81d/1Ez82xMbBIa7PrMM0dWOTQ==
X-Google-Smtp-Source: ABdhPJy17WGcM1t+58Ds/55kZB/UVfagy6H7Awrmygrcjn4ZsnGei+mnwfnnX1ZBL1MjhCeUXHA+MQ==
X-Received: by 2002:a2e:8847:0:b0:249:7d2f:8a26 with SMTP id
 z7-20020a2e8847000000b002497d2f8a26mr10192677ljj.493.1647946877458; 
 Tue, 22 Mar 2022 04:01:17 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 5-20020a2e1445000000b002491768821asm2392781lju.49.2022.03.22.04.01.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Mar 2022 04:01:16 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220318131943.hc7z52beztqlzwfq@skbuf>
References: <86lex9hsg0.fsf@gmail.com> <YjNDgnrYaYfviNTi@lunn.ch>
 <20220317153625.2ld5zgtuhoxbcgvo@skbuf> <86ilscr2a4.fsf@gmail.com>
 <20220317161808.psftauoz5iaecduy@skbuf> <8635jg5xe5.fsf@gmail.com>
 <20220317172013.rhjvknre5w7mfmlo@skbuf> <86tubvk24r.fsf@gmail.com>
 <20220318121400.sdc4guu5m4auwoej@skbuf> <86pmmjieyl.fsf@gmail.com>
 <20220318131943.hc7z52beztqlzwfq@skbuf>
Date: Tue, 22 Mar 2022 12:01:13 +0100
Message-ID: <86a6dixnd2.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
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

On fre, mar 18, 2022 at 15:19, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Fri, Mar 18, 2022 at 02:10:26PM +0100, Hans Schultz wrote:
>> In the offloaded case there is no difference between static and dynamic
>> flags, which I see as a general issue. (The resulting ATU entry is static
>> in either case.)
>
> It _is_ a problem. We had the same problem with the is_local bit.
> Independently of this series, you can add the dynamic bit to struct
> switchdev_notifier_fdb_info and make drivers reject it.
>
>> These FDB entries are removed when link goes down (soft or hard). The
>> zero DPV entries that the new code introduces age out after 5 minutes,
>> while the locked flagged FDB entries are removed by link down (thus the
>> FDB and the ATU are not in sync in this case).
>
> Ok, so don't let them disappear from hardware, refresh them from the
> driver, since user space and the bridge driver expect that they are
> still there.

I have now tested with two extra unmanaged switches (each connected to a
seperate port on our managed switch, and when migrating from one port to
another, there is member violations, but as the initial entry ages out,
a new miss violation occurs and the new port adds the locked entry. In
this case I only see one locked entry, either on the initial port or
later on the port the host migrated to (via switch).

If I refresh the ATU entries indefinitly, then this migration will for
sure not work, and with the member violation suppressed, it will be
silent about it.

So I don't think it is a good idea to refresh the ATU entries
indefinitely.

Another issue I see, is that there is a deadlock or similar issue when
receiving violations and running 'bridge fdb show' (it seemed that
member violations also caused this, but not sure yet...), as the unit
freezes, not to return...
