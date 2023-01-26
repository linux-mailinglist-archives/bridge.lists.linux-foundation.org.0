Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 502D567D666
	for <lists.bridge@lfdr.de>; Thu, 26 Jan 2023 21:28:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 769F782456;
	Thu, 26 Jan 2023 20:27:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 769F782456
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=rvmm5Mwl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xoUMcL98RwPn; Thu, 26 Jan 2023 20:27:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2AEFB82446;
	Thu, 26 Jan 2023 20:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AEFB82446
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C5A00C0077;
	Thu, 26 Jan 2023 20:27:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 98BF1C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 20:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D37A82446
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 20:27:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D37A82446
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KUA_uxP1fCAQ for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 20:27:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 308DB82425
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 308DB82425
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 20:27:55 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id qx13so8223364ejb.13
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 12:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=p6e1idkozAdyFbwzDMBHWW8sAO0btgqXBL7hMwd+oBo=;
 b=rvmm5Mwlqg15HnFqmljC0zk3wG+Tmm/MAtPRw7Z7iIY2XJM4sSAfDUGWgJ2Iz5WMUL
 aT28kc0M17ns4kNIhpn+o/UBxWC+4/Y2dE1AgaCXCnTHgjXlUnVo2s9sP1GyLHcPc+GT
 2oZCZauWaTCoKLnZrbtb2FzA6J5rANzAab0EEFBEa0mS9tqBLzPhZERUfgi8ucIVpGMd
 zjFIT7SH6+BC8FPZIu+6yjc/QTO6sG//ik+hwfWrP3tLXNwoFS7a6FM8S33knZAZs3na
 7iBG3KLKS3Oi/tlDacEcr0HKdEBE6Bfh1cIJcwfBYu9PolKJN2SiTuVSJpjvfwarCx5Y
 /QYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=p6e1idkozAdyFbwzDMBHWW8sAO0btgqXBL7hMwd+oBo=;
 b=aL2/mawCFfdbZC1m6gld3AeSVrsS90S84jmv6QwR2hgYVolG/ibvWS8Sqp8pTsNOjy
 wWjshv0QbBveDKMwNMeVP8GiYq/Q1Nb7f8u6JUKsKcawedSGbEU6MjnJ/QSiyMR0qkrz
 6hdAUHeOTxUdSyF6SdYI3CA7ezdjm0FTCeQdZnzhN2MUDzOeCI5AtfxIRUdwkrAeX+nb
 OEeueec6YpBpL287zbT6rwXaYYyn1RLSRg0l3jKSqtryXzj4QY8j+SDyUlYv4AaTtoKR
 1rPuopM6RZIWetRZuxIoFKwNV9VqiuJLCLCyUX0opW7Qn4fObvhksxIcaSRjQh5v6mJp
 RMMg==
X-Gm-Message-State: AFqh2krQJMGSD2mz0Gv0GTdgrMFLZY90HIYB/ZsiVQGP/VDECsBPXN7N
 MCBMv+vG1CIfjgg0i4Peaxhiww==
X-Google-Smtp-Source: AMrXdXuQu7N2nYVtMau04TrCmrZdh4kSM3AJuPlbOZYtuWMHLYAiSPs3hcqLTqLpEtU1WRVAegP7ug==
X-Received: by 2002:a17:906:b009:b0:877:8ae7:2e44 with SMTP id
 v9-20020a170906b00900b008778ae72e44mr28128735ejy.5.1674764873072; 
 Thu, 26 Jan 2023 12:27:53 -0800 (PST)
Received: from [127.0.0.1] ([149.62.206.225]) by smtp.gmail.com with ESMTPSA id
 y14-20020a17090668ce00b0087329ff591esm1068749ejr.132.2023.01.26.12.27.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Jan 2023 12:27:52 -0800 (PST)
Date: Thu, 26 Jan 2023 22:27:49 +0200
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Stephen Hemminger <stephen@networkplumber.org>,
 Petr Machata <petrm@nvidia.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <20230126111843.2544f7d1@hermes.local>
References: <cover.1674752051.git.petrm@nvidia.com>
 <8886e11bde5874305a26c0b7dc397923a1d5a794.1674752051.git.petrm@nvidia.com>
 <20230126111843.2544f7d1@hermes.local>
Message-ID: <A066ECE0-C02B-426E-9591-670CC234299A@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: netdev@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 01/16] net: bridge: Set
	strict_start_type at two policies
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

On January 26, 2023 9:18:43 PM GMT+02:00, Stephen Hemminger <stephen@networ=
kplumber=2Eorg> wrote:
>On Thu, 26 Jan 2023 18:01:09 +0100
>Petr Machata <petrm@nvidia=2Ecom> wrote:
>
>>  static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] =3D=
 {
>> +	[IFLA_BRPORT_UNSPEC]	=3D { =2Estrict_start_type =3D
>> +					IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT + 1 },
>
>Is the original IFLA_BRPORT a typo? ETH not EHT


No, it's not a typo, Explicit Host Tracking
