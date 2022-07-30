Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A17CA585B41
	for <lists.bridge@lfdr.de>; Sat, 30 Jul 2022 18:22:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 817FD41571;
	Sat, 30 Jul 2022 16:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 817FD41571
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=WtihCL79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2hUC3qkCoEt; Sat, 30 Jul 2022 16:22:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B5EAD41697;
	Sat, 30 Jul 2022 16:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5EAD41697
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 51CC8C0078;
	Sat, 30 Jul 2022 16:22:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 76143C002D
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:22:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4317060E4D
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4317060E4D
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=WtihCL79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oMcAy-xjzTnK for <bridge@lists.linux-foundation.org>;
 Sat, 30 Jul 2022 16:22:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAEEB605B5
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AAEEB605B5
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:22:03 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id j1so827208wrw.1
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 09:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=0BQC7ztdjoYB/4v5qeCyLiMyRnHfJxj5E3xif1QgE+s=;
 b=WtihCL79/iOXyOmDf5JkST8Z0eK9w4M590s7E8csWckLrVZRAfYaAYr3J7uWTXLg1L
 XDVxg5QjIXMy83XQhAJDQPbaytxEcjapeiBoukUlSHGdlqebVGDsY9jvqY+XuaKPBOUF
 Jf+aF7pnJK/HhD/pkOO1j7sZPIfD7Uqp0iD7IWS4fN1nPA5fOX58HRVe9CfLz8aqf9tL
 697JLhLr/trHae02me2CdJkE8sChwI31rt/PE2zqnUuaH7BiMdMzv/6ctZcHIgfUBiu6
 z/FwBG/DyeKseCtTpdS8mKko6LtY8jqf/GjSfen6Sw+jn9avfKYcTcwiyx/TLMODq+eN
 sBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=0BQC7ztdjoYB/4v5qeCyLiMyRnHfJxj5E3xif1QgE+s=;
 b=HhaagNsPUpr/9RF7uwObmX1UTOjwiMihU2LfBhKxDTF3ui0FWSYWxtLIr+AxVakPa6
 pUuf9VgLBkhmu6dWnWyY8x94bEzjXlzEZsTlOnDHC1Pj/NsOTDHWPHvlKZGzUGyKqsqY
 +6ri0qSRoEcHLCP1RM+0bgPCqMAh5WWPYiMoBRkF+RWXnP5qSIiN3Yz+osdHoBTOQgTL
 Fil3dN2xw65kKZt+Af04Z5wzcR6V72wrEVhCKdocwF1imP7XAyC5uhZHuN/zLVpbC72w
 nOJ7ssKtDF8NCUiAwsW6r7iqW1lgE0bmSLKoYkm2M2CUwzJxSvDWbqVWTYlMN2HnKj07
 0IwA==
X-Gm-Message-State: ACgBeo0teQh1ZS6ZkIjLCpCWOOv4Oe0AWQxicdbBGEHt424j5fGqDt+Z
 lqI3yHcMmC28bIq52TjUgSZVqw==
X-Google-Smtp-Source: AA6agR5HePf8wJw0fTd3HYsWdhMjCAq6Lrl8j879hetdIKwStLc4LFN5jh46fcusXxeRHsnIGz9rcg==
X-Received: by 2002:adf:dc87:0:b0:21e:ecad:a6bc with SMTP id
 r7-20020adfdc87000000b0021eecada6bcmr5440902wrj.218.1659198121799; 
 Sat, 30 Jul 2022 09:22:01 -0700 (PDT)
Received: from [192.168.0.103] (bras-109-160-30-111.comnet.bg.
 [109.160.30.111]) by smtp.gmail.com with ESMTPSA id
 t13-20020adfdc0d000000b0021e4bc9edbfsm6606501wri.112.2022.07.30.09.22.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 30 Jul 2022 09:22:01 -0700 (PDT)
Message-ID: <f7ede054-f0b3-558a-091f-04b4f7139564@blackwall.org>
Date: Sat, 30 Jul 2022 19:21:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, aroulin@nvidia.com
References: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com,
 Eric Dumazet <edumazet@google.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 0/3] net: vlan: fix bridge binding
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

On 7/30/22 19:03, Sevinj Aghayeva wrote:
> When bridge binding is enabled for a vlan interface, it is expected
> that the link state of the vlan interface will track the subset of the
> ports that are also members of the corresponding vlan, rather than
> that of all ports.
> 
> Currently, this feature works as expected when a vlan interface is
> created with bridge binding enabled:
> 
>    ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>          bridge_binding on
> 
> However, the feature does not work when a vlan interface is created
> with bridge binding disabled, and then enabled later:
> 
>    ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>          bridge_binding off
>    ip link set vlan10 type vlan bridge_binding on
> 
> After these two commands, the link state of the vlan interface
> continues to track that of all ports, which is inconsistent and
> confusing to users. This series fixes this bug and introduces two
> tests for the valid behavior.
> 
> Sevinj Aghayeva (3):
>    net: bridge: export br_vlan_upper_change
>    net: 8021q: fix bridge binding behavior for vlan interfaces
>    selftests: net: tests for bridge binding behavior
> 
>   include/linux/if_bridge.h                     |   9 ++
>   net/8021q/vlan.h                              |   2 +-
>   net/8021q/vlan_dev.c                          |  21 ++-
>   net/bridge/br_vlan.c                          |   7 +-
>   tools/testing/selftests/net/Makefile          |   1 +
>   .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
>   6 files changed, 176 insertions(+), 7 deletions(-)
>   create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh
> 

Hmm.. I don't like this and don't think this bridge function should be 
exported at all.

Calling bridge state changing functions from 8021q module is not the 
proper way to solve this. The problem is that the bridge doesn't know 
that the state has changed, so you can process NETDEV_CHANGE events and 
check for the bridge vlan which got its state changed and react based on 
it. I haven't checked in detail, but I think it should be doable. So all
the logic is kept inside the bridge.

Cheers,
  Nik
