Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DCE647ECE
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2CC24014B;
	Fri,  9 Dec 2022 07:54:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2CC24014B
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=uMUfs0Yh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I_mLITSH6X4D; Fri,  9 Dec 2022 07:54:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 51AAE40127;
	Fri,  9 Dec 2022 07:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51AAE40127
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EE0BAC007C;
	Fri,  9 Dec 2022 07:54:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1C744C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC988605F6
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC988605F6
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=uMUfs0Yh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jEc4aLj9WO0T for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:53:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0732860593
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0732860593
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:53:58 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id o5so4379226wrm.1
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=DYM+UIuymwma5G6DYkw7/MsYdvWysx8+7uyf+N85amo=;
 b=uMUfs0YhOECmMRpcaDtjHP0b5MCQYz0N2jamvkr0m5+tMEmHdCAOTRPIdrqV+X0ad/
 kMYd0PKNMjmhPJoVj0+xI76eArlkMFfFR/HiwfOJxEc78IMQ9TXJuNqf/WHy2QNiJtPp
 jVOywPlD45qkPWzxa5aK+qvXB8/OfhqQeJXOz0gFq0jAcbzsMQMHldLz5yrQWAakxv2o
 GxoPM1SusHpUKNHgtI6ufT8l2vlEhk3mwuHR/+A7NOOf7hhaWu5YavN7cQxphZs5a+66
 BRWrrL3wX2Q/aTgVqo90FN5DLFIS/t68kTx3sTTrV4gTP0AgZ/cpuH2xYnLDDzKyczPB
 Sw4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DYM+UIuymwma5G6DYkw7/MsYdvWysx8+7uyf+N85amo=;
 b=ulr87icThetfmYArlowaletiLQDhv1eGGymN8kzsNnTckFfE1Q+XyDkZh+T87Hb/4m
 wKfwE0L78r9xYhbZKWCoCHoKmlAXSy72MRCyBUk8UVXj8p4iI4+Gzad9S08rcrKdTAuq
 9oyu95E+ICNhBeOLNwfEMaJqD9XKsCMHvm4+fbzt8fN2C8tnBNQqIuFegY+lOTzDKDFQ
 ebNNssRewptdcVGjc8qSmq19upPbC5prpyyfQx+H95F6ptHggKNz0+9TX4MuCPY6FJYE
 MZfTjgt2VNEAQsb4ROac831t0kVOHpaK8TZBJZUBqY2AmBClDKMLlYqEaHM6M+6VHBqr
 br5g==
X-Gm-Message-State: ANoB5pl5xh6SvCzhXSeNg0tKL73v9dm8H3vxEhCQKVO7ZYcAQfS5HdmT
 SclsqiBlieY6XotDztyI3kLXkg==
X-Google-Smtp-Source: AA0mqf6gj9OAClEPjKYJmCOrnMh0jFtlMDQWO8Mgo7y/sLRBAoPOZUaHYyYEenY5M2bTJefq+H/OMw==
X-Received: by 2002:adf:eccd:0:b0:242:102c:c571 with SMTP id
 s13-20020adfeccd000000b00242102cc571mr3126504wro.19.1670572437027; 
 Thu, 08 Dec 2022 23:53:57 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 o11-20020a5d4a8b000000b002425be3c9e2sm682374wrq.60.2022.12.08.23.53.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:53:56 -0800 (PST)
Message-ID: <8cbaccf9-2ca3-b15e-dd1e-85e344a89561@blackwall.org>
Date: Fri, 9 Dec 2022 09:53:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-12-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-12-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 11/14] bridge: mcast: Allow user space
 to specify MDB entry routing protocol
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

On 08/12/2022 17:28, Ido Schimmel wrote:
> Add the 'MDBE_ATTR_RTPORT' attribute to allow user space to specify the
> routing protocol of the MDB port group entry. Enforce a minimum value of
> 'RTPROT_STATIC' to prevent user space from using protocol values that
> should only be set by the kernel (e.g., 'RTPROT_KERNEL'). Maintain
> backward compatibility by defaulting to 'RTPROT_STATIC'.
> 
> The protocol is already visible to user space in RTM_NEWMDB responses
> and notifications via the 'MDBA_MDB_EATTR_RTPROT' attribute.
> 
> The routing protocol allows a routing daemon to distinguish between
> entries configured by it and those configured by the administrator. Once
> MDB flush is supported, the protocol can be used as a criterion
> according to which the flush is performed.
> 
> Examples:
> 
>  # bridge mdb add dev br0 port dummy10 grp 239.1.1.1 permanent proto kernel
>  Error: integer out of range.
> 
>  # bridge mdb add dev br0 port dummy10 grp 239.1.1.1 permanent proto static
> 
>  # bridge mdb add dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.1 permanent proto zebra
> 
>  # bridge mdb add dev br0 port dummy10 grp 239.1.1.2 permanent source_list 198.51.100.1,198.51.100.2 filter_mode include proto 250
> 
>  # bridge -d mdb show
>  dev br0 port dummy10 grp 239.1.1.2 src 198.51.100.2 permanent filter_mode include proto 250
>  dev br0 port dummy10 grp 239.1.1.2 src 198.51.100.1 permanent filter_mode include proto 250
>  dev br0 port dummy10 grp 239.1.1.2 permanent filter_mode include source_list 198.51.100.2/0.00,198.51.100.1/0.00 proto 250
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.1 permanent filter_mode include proto zebra
>  dev br0 port dummy10 grp 239.1.1.1 permanent filter_mode exclude proto static
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * Reject protocol for host entries.
> 
>  include/uapi/linux/if_bridge.h |  1 +
>  net/bridge/br_mdb.c            | 15 +++++++++++++--
>  net/bridge/br_private.h        |  1 +
>  3 files changed, 15 insertions(+), 2 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


