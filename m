Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 824EA62184B
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 16:31:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4EA08129E;
	Tue,  8 Nov 2022 15:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4EA08129E
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=eKNRxNVD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ycvUrVW5w9QT; Tue,  8 Nov 2022 15:31:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4CDA080DB9;
	Tue,  8 Nov 2022 15:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CDA080DB9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E4091C0077;
	Tue,  8 Nov 2022 15:31:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D89A1C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A64928129E
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A64928129E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19uZpuUXuhI7 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 15:31:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABC2580DB9
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABC2580DB9
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:31:16 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id s12so13423406edd.5
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 07:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=77MlvYrSo2GNKJVGomS31FpqZbhx0yNZ6IAPQdhRuvE=;
 b=eKNRxNVDQhX53Qn4SGuahJRXIOuG1FJ4gw6S+uoiOkDIjuhaWTQjcr3tKyOOz618lR
 x0HefKtXnQFMyyfCTLapRDkzUJE4Kpe3s9zllRYhl6o+7tEvByAcqr7II6MI8C8kqOee
 +R2oo6jwxNw+NIwSOV0/sBRk1WePr8XU5rd4LTfzH/ijqOrWdTDFkxDNCPUBBSaPwGld
 8MrfhrDIymXCcVtH8I1Qdw5MBJuqSFI+latc0n7Y2mNlfVU070SkjKBX/GrKV+Q89moG
 fuQ8JXxzeP4YjIGAFg1U4ntsDIDgurxLxnw02zTe/wBOLnsEr7rPmTEYYMSVSveoKMSS
 YVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=77MlvYrSo2GNKJVGomS31FpqZbhx0yNZ6IAPQdhRuvE=;
 b=c/3xvPr4MJHjjO3A+vVl6U5jqTNhANTbN5jEQ2DuB2yR/hFv/cwqXLJpTNp56KUGXJ
 jKvWqfzZdfutJZkaUzI602FWymqy43l7atSnvtfo/4YRWjgQGkFOMcvp9EvRTcZeyF00
 dkK95IEnOE11gGIAJmHzl3MlaUPTzyeqmRJiRBXz8wOBzsUKUvbX4SFGy19UJytBN9L5
 A6n0jAZLyHn1dTZloq9LE6S3YFupiEY0Bcfr5RSQ4/0Lek/06+/9rUVMjFvTl+tU1Wfo
 zoicl0jeD1m3YaeoiKX9Vwp8BYqCyDbC8zKJw97gdty0m756RyUVZ0NUxhpEz78k9dV6
 PYCw==
X-Gm-Message-State: ACrzQf1Bu9GDRFJpauoRTZtzHimtMsvs1cxvbavV+0uwqrHXUU3+AlgA
 +/9oBI55k6j9MGaLJlsN424=
X-Google-Smtp-Source: AMsMyM6oI3ybSm1UPu85xQM+oOQKADRoVo1IKGpZBzQ2zADP6gIEQhPV8OPEII1yLpP1EKXDm0M5nA==
X-Received: by 2002:aa7:d8c4:0:b0:461:8d31:41fc with SMTP id
 k4-20020aa7d8c4000000b004618d3141fcmr56233732eds.202.1667921474791; 
 Tue, 08 Nov 2022 07:31:14 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 kx5-20020a170907774500b007add62dafb7sm4805681ejc.5.2022.11.08.07.31.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 07:31:14 -0800 (PST)
Date: Tue, 8 Nov 2022 17:31:11 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221108153111.vlyb2lxo7rm2i3kk@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com> <Y2o2dB+k+yDHRVtA@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2o2dB+k+yDHRVtA@shredder>
Cc: Petr Machata <petrm@nvidia.com>, Ivan Vecera <ivecera@redhat.com>,
 bridge@lists.linux-foundation.org, vladimir.oltean@nxp.com,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 00/15] mlxsw: Add 802.1X and MAB
	offload support
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

On Tue, Nov 08, 2022 at 12:59:00PM +0200, Ido Schimmel wrote:
> + Vladimir
> 
> You weren't copied on the patches by mistake. They are available here:
> https://lore.kernel.org/netdev/cover.1667902754.git.petrm@nvidia.com/

Thanks for copying me. The patches look great to my eyes. I didn't go
into details into the mlxsw details, just because I really have no clue
there.
