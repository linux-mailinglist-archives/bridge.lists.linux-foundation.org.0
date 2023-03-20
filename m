Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB7A6C117E
	for <lists.bridge@lfdr.de>; Mon, 20 Mar 2023 13:08:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84B6E40322;
	Mon, 20 Mar 2023 12:08:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84B6E40322
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=ob0cCOvH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4N1A6JTLtb8; Mon, 20 Mar 2023 12:08:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CB072403C5;
	Mon, 20 Mar 2023 12:08:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB072403C5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 80261C0089;
	Mon, 20 Mar 2023 12:08:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 295C7C0032
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 12:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04ABC81990
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 12:08:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04ABC81990
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=ob0cCOvH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bxx9TZz1aN_M for <bridge@lists.linux-foundation.org>;
 Mon, 20 Mar 2023 12:08:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1085481975
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1085481975
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 12:08:24 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 i5-20020a05600c354500b003edd24054e0so2253754wmq.4
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 05:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1679314103;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0DX4qBiGcGPtOV8eO23GpfgYZaEoud4OZh0owe5T4Xc=;
 b=ob0cCOvHCgx+sWCZcQWup1xlVWDWoiFVDCN3lJ5IhUATuzhYyZIUey29e8g18Js2WI
 g41ZkxBkZni+Bdb+IrhCVneXhRxHfRPkXKCCFNB0DVSs6duRKr1ngXfmHVvIfzsXBG1L
 6VU/SrBQnPlHWS24n4AjmKzpUaky/lmrXXDkwQDJ5CT2Db8wZ/3utkVonf8uZWZofizx
 pUNfNYcIeCZ/bwQx2NGnc/dWUqnl1sjZsTNSU3nPldjC45GW4uDUalitIiq4wK9hfS/E
 M9XhTCFkT06Tzwi1eYzBNDe11812UszSD2W/mwlqxbJO0j8belRghMoYiAiDPCQW1wiD
 pxUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679314103;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0DX4qBiGcGPtOV8eO23GpfgYZaEoud4OZh0owe5T4Xc=;
 b=G8we22NJhWLJ6Ezi8NG6h+w2jYKtaSBVmqAqOehMHoWTy3ib3GU/+zdQvG8Ja1l7D2
 yMiKBUGIq3C3WnmHS6U8xN0+kUlS/m50iLtiMLFnZ1B0yQgEFn8gc4dV2URwf4CmyXH+
 ymxt/bJWc6UiChxb2AVf0Vq0K/LP20b92sVy1ilLthOHf2CrPaAUCjSVIgp5MFKl8ZlT
 Pk/SBctFzvuce07m8F/1bZxl7OVWvBv43niM4y2EoJ95vgc8YBbVfHJLptXycBlMmIqq
 Zp75stBi1vrqg8irZ/CU1V+9lnfXpHawZ5Emi/Tt5yUpnC6FzjLKGYHHfWBROuDStE5x
 ZpUg==
X-Gm-Message-State: AO0yUKWznLIx3fzjWptLKWCi8m/h1RZVt23guIXflLcibxuGarhCDDX2
 XPF/e/Gs2VLd7eeBzBvyYEbVyw==
X-Google-Smtp-Source: AK7set9zj56CK4RoYFMbxlpgRSHefoSnagjvKRQ+Bu/IgqPh9O6mCqTZ5j3rbxvhvYdQvXNtJGM9mg==
X-Received: by 2002:a05:600c:4510:b0:3dc:4fd7:31f7 with SMTP id
 t16-20020a05600c451000b003dc4fd731f7mr31077298wmo.41.1679314102839; 
 Mon, 20 Mar 2023 05:08:22 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 c24-20020a05600c0ad800b003e22508a343sm10251629wmr.12.2023.03.20.05.08.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Mar 2023 05:08:22 -0700 (PDT)
Message-ID: <a4ce2c34-eabe-a11f-682a-4cecf6c3462b@blackwall.org>
Date: Mon, 20 Mar 2023 14:08:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Ujjal Roy <royujjal@gmail.com>, roopa@nvidia.com, nikolay@nvidia.com
References: <CAE2MWkm=zvkF_Ge1MH7vn+dmMboNt+pOEEVSgSeNNPRY5VmroA@mail.gmail.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <CAE2MWkm=zvkF_Ge1MH7vn+dmMboNt+pOEEVSgSeNNPRY5VmroA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Bridge] Multicast: handling of STA disconnect
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

On 20/03/2023 13:45, Ujjal Roy wrote:
> Hi Nikolay,
> 
> I have some query on multicast. When streams running on an STA and STA
> disconnected due to some reason. So, until the MDB is timed out the
> stream will be forwarded to the port and in turn to the driver and
> dropps there as no such STA.
> 
> So, is the multicast_eht handling this scenario to take any action
> immediately? If not, can we do this to take quick action to reduce
> overhead of memory and driver?
> 
> I have an idea on this. Can we mark this port group (MDB entry) as
> INACTIVE from the WiFi disconnect event and skip forwarding the stream
> to this port in br_multicast_flood by applying the check? I can share
> the patch on this.
> 
> Thanks,
> UjjaL Roy

Hi,
Fast leave and EHT (as that's v3's fast leave version) are about quickly converging when
a leave is received (e.g. when there are no listeners to quickly remove the mdb). They
don't deal with interface states (IIUC). Why don't you just flush the port's mdb entries
on disconnect? That would stop fwding.

Cheers,
 Nik


