Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DA24FE2B2
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:32:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A40381987;
	Tue, 12 Apr 2022 13:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s0N96FqMGZJz; Tue, 12 Apr 2022 13:32:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A61028321B;
	Tue, 12 Apr 2022 13:32:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5C2C1C0088;
	Tue, 12 Apr 2022 13:32:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6CF97C002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CBD7408EB
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:32:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xYDFq-UmgfVk for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:32:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5FE60408DE
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:32:38 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id i27so37372804ejd.9
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=dxiyrkbJ1gI5e17uMzQYH9HmVd7ZbYHU6cmKHA1Eej8=;
 b=0oHfHkL/8/Z16pZuFdu0PP47aaLJV+vInQ3Fxy4U4AodZi8XUZlTg3a/1ht0zAVdLY
 s6Whd9eR+N/3AImhOeUnVLZgUhjbuHeVArpbEw35DyEZ81UAV6POd2oPLDEJgqzFh9Qg
 CL3n3TjznoMqoh9/NF5sr4uklZ9bUvXGTU3YcNVt7lHtjORFxfub2c6LEasA8eAdxNiT
 KxpPuz/m+7f0Ba08nzJeGySdf/qI7U5pDDW1VrfnQo4nGnSqJC/aN+B2LKXUUW6zP0vs
 IoNFrvsPbEVjrBtoYZSb931PPENHwYQoqJOk7GCotozPfvGb3+1lB/SMAXNHWVw3/TZP
 mH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=dxiyrkbJ1gI5e17uMzQYH9HmVd7ZbYHU6cmKHA1Eej8=;
 b=HC/4R/j17tjUlu1TWaGzmX7xC6/XeIs35QFoBF0xg2U9ls/hsjsLB0jLdYIJ29sCSa
 KOOzdckfEHPGmHw571jPTZt5feSan+mzKdHYNv6W1EmFlXTYd1FptVgaQUeUEazFUqA7
 fdHwU+zwto/UwHy265weH5oqmzC+3/ZskTan7bexE5Tt5o3HZbyP9l+JbOLUxIh3eFJd
 jShfPeZhw2IZ/nBBioF6uuvzJNLS4f/9TPuOq4gINRff+mTfsicjc2D+V4TZieURzxIR
 dP/t04j4YsCYCKV8Wao4S+7G1PtWAxoEd/H9KGDvMyU4WuEHUZGK0KQJElC2JESwbq62
 PGWQ==
X-Gm-Message-State: AOAM530C1aoNcMLoCXvZlCbYu4/OsCZbigCMg2i0jgYGu9sKQQnTY18n
 ulDMTZPeaqPJGu3aqp9VAQww9A==
X-Google-Smtp-Source: ABdhPJxmv2vdpeWr9kNJHj2itItldgAf2hGzQLGSOQDe2p/DioPn0WkIx5ScXHWtpbDWw+Z7HXhZrA==
X-Received: by 2002:a17:906:d108:b0:6e8:7765:a70b with SMTP id
 b8-20020a170906d10800b006e87765a70bmr12999379ejz.436.1649770356536; 
 Tue, 12 Apr 2022 06:32:36 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u3-20020a17090657c300b006d01de78926sm13137685ejr.22.2022.04.12.06.32.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 06:32:36 -0700 (PDT)
Message-ID: <bf4ed31f-a2a7-a423-5ef4-5cd42b9889de@blackwall.org>
Date: Tue, 12 Apr 2022 16:32:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: netdev@vger.kernel.org
References: <20220412132245.2148794-1-razor@blackwall.org>
 <20220412132245.2148794-8-razor@blackwall.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220412132245.2148794-8-razor@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: dsahern@kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 7/8] net: bridge: fdb: add support
 for flush filtering based on ndm flags and state
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

On 12/04/2022 16:22, Nikolay Aleksandrov wrote:
> Add support for fdb flush filtering based on ndm flags and state. NDM
> state and flags are mapped to bridge-specific flags and matched
> according to the specified masks. NTF_USE is used to represent
> added_by_user flag since it sets it on fdb add and we don't have a 1:1
> mapping for it. Only allowed bits can be set, NTF_USE and NTF_MASTER are
> ignored.

err, *NTF_SELF* and NTF_MASTER are ignored

