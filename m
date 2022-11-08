Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DFD621620
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 15:22:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83F4560D6A;
	Tue,  8 Nov 2022 14:22:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83F4560D6A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Lob1t9kB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rntQ9jNZDuuD; Tue,  8 Nov 2022 14:22:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2D06D60D67;
	Tue,  8 Nov 2022 14:22:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D06D60D67
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CCC55C0077;
	Tue,  8 Nov 2022 14:22:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BDE8FC002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98AFD60D67
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98AFD60D67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e1E2GNaf_Xq3 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 14:22:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27FB360D66
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27FB360D66
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:22:49 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id b2so39013644eja.6
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 06:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=I/2XrmdghbmaaNa8DlOtVmiZ6wnxuyN0Gwxqhrv9NWE=;
 b=Lob1t9kBBiWI2SJB+VBPSsmDx3w9cLYoa/XYK5DPyPLjn2NW1BilVWMW4gVJOLeLpB
 3NwRl39PRdmdpR/aimOMTtw1u8xfCs3WMXLc5F+aPdHEgJHNgcKZN/S4LLdTNReEt5P6
 hJ+z0NUcQ/UfvZ1YWSEGQv0qG4TfLF57zEDfViihTEH1JbqXcvMpvrSeiiBC+uq4PcFA
 Zk9WwtvmRC8X3RKcXYDqJNxVcuic2vLmjSR2RXyH5fWvJp++Mhm/WaSKSxn0JB7QzA1j
 UkTQ1F5C3hC1Q7GW6rxT7s8dWug1PbB4v1X87r849cazqyMaNg62KWhIfEaB1Cos4WRj
 UpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I/2XrmdghbmaaNa8DlOtVmiZ6wnxuyN0Gwxqhrv9NWE=;
 b=vISTuRd6EV0aMwKGYJiFyUcf9y3Lc028Po7t6bkX7kaza1KLLm4lJ2fJLI82HFTryo
 8CRs423eRHComHzEBaAdWiQJYrrFviSrGjKLZtETg8YVX/UaetbWJW+s1+d5SnOWRsoW
 rtSmeA9GFQqOmcpu2g8P+GFupBEtDHSNFnJDUFxffe6IoYeSPsDOHxL144be0deW4Gsv
 /tp3rkjHe/p0yx5UXj2BZv6tApXcUDdVUpD641bnhFfU/qCTFzA5QitKIVfWDugqX3ax
 mogO/XZJrgg+mZOI6c4aR6Dpn0CR3V4DW2S9rlu2DFItmzXEVpcnH87VfoBVtaVRx3t3
 J2Ow==
X-Gm-Message-State: ACrzQf1MH7I4WFOcs29p9pW1mDXejhkngSc5fhcq7PfbI0XSxM7w1m4C
 BewK6cqfKA1wNNT3d+ysCfY=
X-Google-Smtp-Source: AMsMyM7eqIWfGlREyktBYHU4Mu59xyQRNn8ghLb+HacV99Jy45Vk5chEOOqFML2mz3qh98tz5Gu/7g==
X-Received: by 2002:a17:906:9bed:b0:7a6:a68b:9697 with SMTP id
 de45-20020a1709069bed00b007a6a68b9697mr52009042ejc.218.1667917367256; 
 Tue, 08 Nov 2022 06:22:47 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 c26-20020aa7c99a000000b00462bd673453sm5622772edt.39.2022.11.08.06.22.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 06:22:46 -0800 (PST)
Date: Tue, 8 Nov 2022 16:22:44 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20221108142244.r5polveqve3ckr7j@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <2db3f3f1eff65e42c92a8e3a5626d64f46e68edc.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2db3f3f1eff65e42c92a8e3a5626d64f46e68edc.1667902754.git.petrm@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Jiri Pirko <jiri@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 03/15] bridge: switchdev: Reflect MAB
 bridge port flag to device drivers
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

On Tue, Nov 08, 2022 at 11:47:09AM +0100, Petr Machata wrote:
> From: Ido Schimmel <idosch@nvidia.com>
> 
> Reflect the 'BR_PORT_MAB' flag to device drivers so that:
> 
> * Drivers that support MAB could act upon the flag being toggled.
> * Drivers that do not support MAB will prevent MAB from being enabled.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
