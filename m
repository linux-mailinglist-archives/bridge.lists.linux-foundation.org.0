Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AB25BE1B2
	for <lists.bridge@lfdr.de>; Tue, 20 Sep 2022 11:16:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC767823E3;
	Tue, 20 Sep 2022 09:16:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC767823E3
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=oWXQ6TZy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YU0dqVbNrVFB; Tue, 20 Sep 2022 09:16:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5109B81D5F;
	Tue, 20 Sep 2022 09:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5109B81D5F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DDB74C0077;
	Tue, 20 Sep 2022 09:16:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1788AC002D
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 09:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D31BE81B69
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 09:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D31BE81B69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5SGKqE4TXCpJ for <bridge@lists.linux-foundation.org>;
 Tue, 20 Sep 2022 09:16:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E6BF81ADE
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E6BF81ADE
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 09:16:29 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id lc7so4747375ejb.0
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 02:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date;
 bh=v6Fmj83hx1h9EOaSFrL3lfhYXbz4XGnMveaMkf6jjPQ=;
 b=oWXQ6TZyU38Tt6B0tB5xoeC2txaV/i23+XquBsZIHUlTTdtqpu/uE5zzD2jzVvE+Vf
 WzCR1/U7ZsjhW8WtBnrtoJiP70wvf0AuxhL3i9qedEDUVGMWVGw4N9gRiiUDXYjS3++/
 4flXzd2anBcOIY2h7liTEQb2eNCop6Ymvn29azgWeIx4F8b7viSUyVrZ89YRgpSM35pU
 b4j5EA/AO4GanUxm7eAIIVGMfAWHXxpxTav64KglJnpoMOA3ALHlJpHHmpacUrTkl1po
 wY19mQYdyX7TiiTOKtCqM21IGN5fvYkzdlcnPb8kdOD4eD7PBvqDYiq3siRnzbUhf64t
 eENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=v6Fmj83hx1h9EOaSFrL3lfhYXbz4XGnMveaMkf6jjPQ=;
 b=sZMSFkq1Vw0iSm6TQsQKCOoQt//iEHTDf08a1WKOV/2xwtRthgWLcGX86FVfYtAGfq
 acXQMq+RYJLjIQ8NjraZ6Caqo5VsaCiU5kKvXk7pd1id4DPjhp+pHbTCxVgB94xJfh27
 FW+oCouzJeFEktffiLyIuD1Vyas16X1CvOFR1d1r/SOxck8yVQxXePrWPHGYu4aogbJ7
 bxhtjtguKEgTkxQeSNd4MK10dlLu1BSwGaHUo//BNXcOrg1Ux7cgQsi0MsKoKLFbXui7
 /4YNaHYxgW+5BwOXeH8XsZKXg0i8xKvko2EmUmnwglDfWOtS9v3DZdltPl4cQiv1PXWr
 S0Fw==
X-Gm-Message-State: ACrzQf3wFI4e1yt6rk8AkZdf4DxX61BaeThgTHJg6YAeb2s4VyVbKvtN
 MMor0dFzzRN8JC2tHR9kt85T2w==
X-Google-Smtp-Source: AMsMyM7b7VV/V1SL9IvuRs1rPa+v63PClIaBQ47XAmsdBXtP5r3aIFHV7tonD0iqESAjbN0/c5bXig==
X-Received: by 2002:a17:907:628f:b0:72f:58fc:3815 with SMTP id
 nd15-20020a170907628f00b0072f58fc3815mr16179909ejc.719.1663665387996; 
 Tue, 20 Sep 2022 02:16:27 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u9-20020aa7d0c9000000b0043ba7df7a42sm912888edo.26.2022.09.20.02.16.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Sep 2022 02:16:27 -0700 (PDT)
Message-ID: <78bd0e54-4ee3-bd3c-2154-9eb8b9a70497@blackwall.org>
Date: Tue, 20 Sep 2022 12:16:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, netdev@vger.kernel.org
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: aroulin@nvidia.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com,
 Eric Dumazet <edumazet@google.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC net-next 0/5] net: vlan: fix bridge binding
 behavior and add selftests
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

On 17/09/2022 23:17, Sevinj Aghayeva wrote:
> When bridge binding is enabled for a vlan interface, it is expected
> that the link state of the vlan interface will track the subset of the
> ports that are also members of the corresponding vlan, rather than
> that of all ports.
> 
> Currently, this feature works as expected when a vlan interface is
> created with bridge binding enabled:
> 
>   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>         bridge_binding on
> 
> However, the feature does not work when a vlan interface is created
> with bridge binding disabled, and then enabled later:
> 
>   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>         bridge_binding off
>   ip link set vlan10 type vlan bridge_binding on
> 
> After these two commands, the link state of the vlan interface
> continues to track that of all ports, which is inconsistent and
> confusing to users. This series fixes this bug and introduces two
> tests for the valid behavior.
> 
> Sevinj Aghayeva (5):
>   net: core: export call_netdevice_notifiers_info
>   net: core: introduce a new notifier for link-type-specific changes
>   net: 8021q: notify bridge module of bridge-binding flag change
>   net: bridge: handle link-type-specific changes in the bridge module
>   selftests: net: tests for bridge binding behavior
> 
>  include/linux/if_vlan.h                       |   4 +
>  include/linux/netdevice.h                     |   3 +
>  include/linux/notifier_info.h                 |  21 +++
>  net/8021q/vlan.h                              |   2 +-
>  net/8021q/vlan_dev.c                          |  20 ++-
>  net/bridge/br.c                               |   5 +
>  net/bridge/br_private.h                       |   7 +
>  net/bridge/br_vlan.c                          |  18 +++
>  net/core/dev.c                                |   7 +-
>  tools/testing/selftests/net/Makefile          |   1 +
>  .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
>  11 files changed, 223 insertions(+), 8 deletions(-)
>  create mode 100644 include/linux/notifier_info.h
>  create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh
> 

The set looks good to me, the bridge and vlan direct dependency is gone and
the new notification type is used for passing link type specific info.

If the others are ok with it I think you can send it as non-RFC, but I'd give it
a few more days at least. :)

Thanks,
 Nik

