Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1236B921A
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 12:51:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F6D040354;
	Tue, 14 Mar 2023 11:51:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F6D040354
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=j6t8D8Mb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zq1U5Ibeazog; Tue, 14 Mar 2023 11:51:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 97DB140A38;
	Tue, 14 Mar 2023 11:51:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97DB140A38
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5518CC008A;
	Tue, 14 Mar 2023 11:51:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4EE16C0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A67D81E24
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:51:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A67D81E24
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=j6t8D8Mb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FXhrUMoq6tmH for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 11:51:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D312A813E7
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D312A813E7
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:51:28 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id p4so7878895wre.11
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 04:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678794687;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JBWcdbOe/+QB4FuxPU4RpjFDIaFQvUM2MH5HEzHxacs=;
 b=j6t8D8MbtXOx/FTacBigFqP8nBect5CBoz8gQ9AHu9y5dotazeSefudnML7HeGFjK7
 +CrNlhO3J1OdG2BAGa6nuxw8DBgv76IMX7myjR1bfGfN08crlQ3w5JLeqO4FyEkLjoXB
 Q0yXLPVA3QzUy7N6Ehne60ndATLwLG2kXlVLcdaHGK/9IpklyzB8fvv63sHMy8bxSHOt
 cU3H3k8BfaEdko1dJJ7x3EnD7VsGtAPGVnwz3iX7ysj4VTJ7907/MQlt6tDB9RJukwcd
 xtWFOIxCujuI4jUefo5ax6vQuOFyYkuFDDBxXu79caPBDwORFJOgu2vTCd8WXhjky30h
 l9EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678794687;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JBWcdbOe/+QB4FuxPU4RpjFDIaFQvUM2MH5HEzHxacs=;
 b=uGJxRUwCQ+b9YRQ9wl1yPF51d7ZC1SnsUKOYe1By5At97V6cwxmftodtBBiLPw5p8A
 3VMK4O1q5CxAOFPsqkxAJx4i9Iae489zaslF98f2VPZWdh4p9wogYZu87RyqO+28s0sZ
 uvMSgv8nlP4nkqL3QG1XHy/5eELCrQKNDjDKo1e/GNx7PPYEMREAXEMb/az/R29tuOOD
 mvZwkWhPsESGPO19aaYeNGW2QJraIR++i4EWXFC7ZGh/O/fujPI8e31REDIT4jsQVG4k
 ZjeGeJvjQS/mP8ZQOxTOEM0jcseVMfOtvjPbK0GsfZEcWbL8o4zDU6sJyJ9EORELmX38
 bKYQ==
X-Gm-Message-State: AO0yUKXd6gkvQWIfJUTFhcDdNG0oDtiXlQjZ8rubWNwe54iKwTY7iNUb
 GUKVnzE9cWXqaPpy8criqaTUlw==
X-Google-Smtp-Source: AK7set/MnaQyG2Zb+8HO34+i97tvZr8bLqQjj87c5lYF4yF9mA/1SWm6m4kgSHeJR0rMJCUCfvNiIw==
X-Received: by 2002:adf:ce03:0:b0:2cf:eed0:f6fb with SMTP id
 p3-20020adfce03000000b002cfeed0f6fbmr901946wrn.32.1678794686783; 
 Tue, 14 Mar 2023 04:51:26 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 e6-20020adffc46000000b002c561805a4csm1897575wrs.45.2023.03.14.04.51.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 04:51:26 -0700 (PDT)
Message-ID: <4a3bfd11-491b-37bc-b843-b438db764aca@blackwall.org>
Date: Tue, 14 Mar 2023 13:51:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 04/11] rtnetlink: bridge: mcast: Relax
 group address validation in common code
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

On 13/03/2023 16:53, Ido Schimmel wrote:
> In the upcoming VXLAN MDB implementation, the 0.0.0.0 and :: MDB entries
> will act as catchall entries for unregistered IP multicast traffic in a
> similar fashion to the 00:00:00:00:00:00 VXLAN FDB entry that is used to
> transmit BUM traffic.
> 
> In deployments where inter-subnet multicast forwarding is used, not all
> the VTEPs in a tenant domain are members in all the broadcast domains.
> It is therefore advantageous to transmit BULL (broadcast, unknown
> unicast and link-local multicast) and unregistered IP multicast traffic
> on different tunnels. If the same tunnel was used, a VTEP only
> interested in IP multicast traffic would also pull all the BULL traffic
> and drop it as it is not a member in the originating broadcast domain
> [1].
> 
> Prepare for this change by allowing the 0.0.0.0 group address in the
> common rtnetlink MDB code and forbid it in the bridge driver. A similar
> change is not needed for IPv6 because the common code only validates
> that the group address is not the all-nodes address.
> 
> [1] https://datatracker.ietf.org/doc/html/draft-ietf-bess-evpn-irb-mcast#section-2.6
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c  | 6 ++++++
>  net/core/rtnetlink.c | 5 +++--
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


