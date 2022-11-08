Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0545621795
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 15:59:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 154C180A91;
	Tue,  8 Nov 2022 14:59:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 154C180A91
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=IEWU2L7U
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgPiZAZM0sdC; Tue,  8 Nov 2022 14:59:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8F96280B20;
	Tue,  8 Nov 2022 14:59:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F96280B20
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 251D8C0077;
	Tue,  8 Nov 2022 14:59:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 84EADC002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 585B6415AB
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 585B6415AB
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=IEWU2L7U
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NkbUEL9Cc8rR for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 14:59:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E65E410D4
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E65E410D4
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:59:34 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id kt23so39265976ejc.7
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 06:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=J1AA1jk+noLUWn3EI/QqWPmqga5tVeAmuKcLyOASUC4=;
 b=IEWU2L7UG31b+6vQvoFxaCyrT42BgWijq9qxlw0Uf/9Ba6xAlk4Bxgxca1Xcm8Ccuo
 7F2ubojIxKLT/0z31+7rEioqCjL2UD9+Azteadg8f1HjRQszJBAlfPRNF/VxTvrN968B
 8vxl69gCu+f5oUJixPF3rpKhITtTFXqZwNMrAEfwFyB/ytzWO4PWvIrOmRxjvOwWnjYY
 h8Q+OBg2avLxlA/HgFl/re7DwIg27wrbAK8tPaR8IidURoG0tL4XgJApZjlB1wM+hetX
 bys9z9qYflR+sGikSVfflk4z4VeNvof2IvEc1wU7JbruXt0fpmk4hHpk/3HHTCmdPVNY
 kYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J1AA1jk+noLUWn3EI/QqWPmqga5tVeAmuKcLyOASUC4=;
 b=fiBObwnISjB5H+mKa0OGx2Xmxxxf9GQXoWAN9dGD3Uo3/8fyHCpsB0ZrWhafKKJTD3
 DVTlBvB9HHYy46u5Cv6rZdpKytnIZx/I849biIj0BzFdLFCe2x90U9IiuVE0ZieV1Zma
 eP9hIVAVWLDRpAPOz/HIq9xDlo/zFx5sFXyZXDHi/zzYetyqGkotgnPISeC48LVTurWx
 HaQ/d8DFlUYSrWop47SBP1ZUTUQTozFi8ZG2bAmv9ED9R70V6qcKPesGKeGXfTOP9AA1
 TV3vhBZx6xD7hSaOSFwh4gUHousSScUSmRPK/sOBAfddAGM6CJOr/wddaHSSYmKgDHP1
 zlWg==
X-Gm-Message-State: ACrzQf1uh1L4JkMdA0A86WwOjK0c737GaURoI6O73wIDCByBi04mf4cX
 /q1ZPWuvzL8P2AhXoYwVKr4=
X-Google-Smtp-Source: AMsMyM4Ljx+XXPIpKL7Id2vhWE+Fe3vEdcs7aRwa8g0SxxBXGIvy+66vnuylYE+kk5j8vNM0v1qXzw==
X-Received: by 2002:a17:906:8a54:b0:7ad:e517:1eb with SMTP id
 gx20-20020a1709068a5400b007ade51701ebmr40139744ejc.567.1667919572404; 
 Tue, 08 Nov 2022 06:59:32 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 fy8-20020a170906b7c800b007877ad05b32sm4794721ejb.208.2022.11.08.06.59.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 06:59:31 -0800 (PST)
Date: Tue, 8 Nov 2022 16:59:29 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20221108145929.qmu2gvd5vvgvasyy@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <f433543efdb610ef5a6aba9ac52b4783ff137a13.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f433543efdb610ef5a6aba9ac52b4783ff137a13.1667902754.git.petrm@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Jiri Pirko <jiri@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 11/15] mlxsw: spectrum_switchdev: Add
 locked bridge port support
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

On Tue, Nov 08, 2022 at 11:47:17AM +0100, Petr Machata wrote:
> From: Ido Schimmel <idosch@nvidia.com>
> 
> Add locked bridge port support by reacting to changes in the
> 'BR_PORT_LOCKED' flag. When set, enable security checks on the local
> port via the previously added SPFSR register.
> 
> When security checks are enabled, an incoming packet will trigger an FDB
> lookup with the packet's source MAC and the FID it was classified to. If
> an FDB entry was not found or was found to be pointing to a different
> port, the packet will be dropped. Such packets increment the
> "discard_ingress_general" ethtool counter. For added visibility, user
> space can trap such packets to the CPU by enabling the "locked_port"
> trap. Example:
> 
>  # devlink trap set pci/0000:06:00.0 trap locked_port action trap

Got the answer I was looking for.

> 
> Unlike other configurations done via bridge port flags (e.g., learning,
> flooding), security checks are enabled in the device on a per-port basis
> and not on a per-{port, VLAN} basis. As such, scenarios where user space
> can configure different locking settings for different VLANs configured
> on a port need to be vetoed. To that end, veto the following scenarios:
> 
> 1. Locking is set on a bridge port that is a VLAN upper
> 
> 2. Locking is set on a bridge port that has VLAN uppers
> 
> 3. VLAN upper is configured on a locked bridge port
> 
> Examples:
> 
>  # bridge link set dev swp1.10 locked on
>  Error: mlxsw_spectrum: Locked flag cannot be set on a VLAN upper.
> 
>  # ip link add link swp1 name swp1.10 type vlan id 10
>  # bridge link set dev swp1 locked on
>  Error: mlxsw_spectrum: Locked flag cannot be set on a bridge port that has VLAN uppers.
> 
>  # bridge link set dev swp1 locked on
>  # ip link add link swp1 name swp1.10 type vlan id 10
>  Error: mlxsw_spectrum: VLAN uppers are not supported on a locked port.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---

Can't really figure out from the patch, sorry. Port security works with
LAG offload?
