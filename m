Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8886217B7
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 16:11:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42A9240924;
	Tue,  8 Nov 2022 15:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42A9240924
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=A8Eq+ntc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUYbWkmQERwP; Tue,  8 Nov 2022 15:11:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C847140905;
	Tue,  8 Nov 2022 15:11:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C847140905
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63443C0077;
	Tue,  8 Nov 2022 15:11:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8805AC002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CB0960761
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CB0960761
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=A8Eq+ntc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4H5X_2TtOnL for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 15:11:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 878C760701
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 878C760701
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 15:11:27 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id kt23so39369784ejc.7
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 07:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4y4rUaYbaz7MBG+9S3FNKhXxJIErUw0KZK+KgNc8tMo=;
 b=A8Eq+ntcGL3Xt10xRJMXfXhZ1Qs1giaozPNWkvbzUZ347P77mULNlBzwkrCmSXhGSr
 aHUsZHSzhpWG3OLyFw8aMC/5wdE9xbLncQ73fIEnIq1oMjT2t76tLQ2p/GI6j55sp+zF
 72OusR6esKv56luQvm2H59r4aMf7LLjZe+LsyiJVOp0xsacn4BhfHB+MZulleSKYlZCO
 ye4Jj2neq+m7mv6QhkRRBgfoLVlQb83vlDmiGxfUlV/S6EWrdrMSMB4zcb9Xj6uxyt8x
 cDx15ui3J3ZYfP2ij+bzZ0LNrHXhC3G9gRmWIGM2QmWro/huTKFivDKtu8dH1ZzRgzPu
 mbvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4y4rUaYbaz7MBG+9S3FNKhXxJIErUw0KZK+KgNc8tMo=;
 b=2mUy8cg0msF4H8fG82sc6NYqhPGs3CJKV6gGeQiMWvbGQEDRQVni+y62OAxMf/iRdq
 p0bVxmkSXaU9h/e6BxbjnuCCH2C/s4y1olbBupz8pZDgiU/mvqTLkdAEm28rxhlVObev
 Lc25CSfhPdzZ5qxPwJXuosE1KwmlP+ySkBWFkHsbmGBcKq4VoNdq1X6TNCKUyBF0qEfZ
 Bhtk5Lkw6X1DnKHeU+vebS/7g8QO/WBnpLvjHazudN8yda1PTQ/zwU78+ImXmK+LJU7M
 Ai5YtYI/ZQOKAkkuXWKj57qsBAjrB4GfdyhAXZP46pQp5NNovGcZPLn2urKy59yoUB7M
 3mrw==
X-Gm-Message-State: ACrzQf2drK8/TouS5pXVoITRjbN+lKTrlB2x7L6o6HOiCU32P4yyJjZe
 Y15oGFklq+mZm7R/u7fiuQ0=
X-Google-Smtp-Source: AMsMyM5m5a2qJsy6QlKmEDU1vf7Yg1coWHyWSPBfF4tKWIlki5r5pEqitz12fRKtZ5++j6PE4WkAgw==
X-Received: by 2002:a17:907:a087:b0:7ae:45f2:bf2d with SMTP id
 hu7-20020a170907a08700b007ae45f2bf2dmr17892315ejc.456.1667920285407; 
 Tue, 08 Nov 2022 07:11:25 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 s7-20020a056402014700b00461a98a2128sm5597855edu.26.2022.11.08.07.11.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 07:11:24 -0800 (PST)
Date: Tue, 8 Nov 2022 17:11:22 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20221108151122.bjhi3rmqpofmdeqa@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <cover.1667902754.git.petrm@nvidia.com>
 <389ee318ff1a799d1e94ba1a33ab2ff42bae50fc.1667902754.git.petrm@nvidia.com>
 <389ee318ff1a799d1e94ba1a33ab2ff42bae50fc.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <389ee318ff1a799d1e94ba1a33ab2ff42bae50fc.1667902754.git.petrm@nvidia.com>
 <389ee318ff1a799d1e94ba1a33ab2ff42bae50fc.1667902754.git.petrm@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Jiri Pirko <jiri@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 13/15] selftests: mlxsw: Add a test
 for EAPOL trap
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

On Tue, Nov 08, 2022 at 11:47:19AM +0100, Petr Machata wrote:
> From: Ido Schimmel <idosch@nvidia.com>
> 
> Test that packets with a destination MAC of 01:80:C2:00:00:03 trigger
> the "eapol" packet trap.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
