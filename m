Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6716C1E13
	for <lists.bridge@lfdr.de>; Mon, 20 Mar 2023 18:33:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9720C60807;
	Mon, 20 Mar 2023 17:33:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9720C60807
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=zTL/ZRzJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sA3Elu2Mtrvu; Mon, 20 Mar 2023 17:33:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 22B9960A89;
	Mon, 20 Mar 2023 17:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22B9960A89
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BEB17C0089;
	Mon, 20 Mar 2023 17:33:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C6FFC0032
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:33:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7B42404DD
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:33:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7B42404DD
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=zTL/ZRzJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IG1O9lLkmp4y for <bridge@lists.linux-foundation.org>;
 Mon, 20 Mar 2023 17:33:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C858A40298
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C858A40298
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:33:46 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 ip21-20020a05600ca69500b003ed56690948so7596098wmb.1
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 10:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1679333625;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5wPFy650NtYWbMwwrvt+1dtXJ58EWb5IAcc9o8PvI1Y=;
 b=zTL/ZRzJhW62lJFASpKOBYQdzErtrgf9ZqSSsQeEZVRbBc1YfqkTNLz98GY0ae72yu
 1g1mLGKwj5iIS4Au1hpI215yodzmQCHde1NrCJ8TWu9TI8yjAhOaI8lSmBIEhWvJ+UoG
 rXlIJQF2leSmhCYNkMOBIDbUzZErlD9cWI4sVN3ujvyN2mJdNw4BgOmafBl74DVsL/HT
 zAfXZCSIspNhoE69b0PIWwy2o5klnowtDaJ0UQH+g045Ftja7rr3pzDoLkZKL8I/IK05
 X3xdImd/vRWljrhnsx0CeaO6wofasgVrmnqijfrf7Ho3FvLpEW1IpFW2/1eBdDLi/hXF
 C54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679333625;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5wPFy650NtYWbMwwrvt+1dtXJ58EWb5IAcc9o8PvI1Y=;
 b=smRm166EZW+NawN4EvRWLZo5TLJSQiugTKdKP1voKwsgliOIJizHimtI0FK+WCilPZ
 E+cBxSuDmm/jb2L5HnCzsspnEVIFgB+hRPAXh8UmUMT6DaupVUXWFjMZPLN2YDuSkivW
 q6wsbj0iULgNngZaBwd8R0LCgKIdkGHUr89Jh30WMJ6RuXxyiPxVDzggG/gG/dBQCdxL
 C3nD8XcapVUXtU36zxApGQ4gohNKRf4CkWW5n5LXd6WBaXG4yL+K+ohUtcH/a+Bo4DzH
 0Ff0ZhxPohvtklVWWI3yDBTBxaQatZet8AUhfYgsqoRu+lMrnhA8SR8WYpEec4PSnyLR
 dagg==
X-Gm-Message-State: AO0yUKXLCsLHCRXR6rr+ApelYfVvLaJ5TNvbDOL3I3gEHk5neqnOsqJn
 ZIZiJkevebC4aTQENPVwLbZi8A==
X-Google-Smtp-Source: AK7set/pClYE2H4LW/4eWJ+dxNnK1LGgrpUERPTuo73wuHEEGkQoGfA+iT1XGOn5crvRpYe+p2CSnA==
X-Received: by 2002:a1c:4c1a:0:b0:3ed:8780:f27b with SMTP id
 z26-20020a1c4c1a000000b003ed8780f27bmr274368wmf.16.1679333624812; 
 Mon, 20 Mar 2023 10:33:44 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 h20-20020a1ccc14000000b003dc522dd25esm11057908wmb.30.2023.03.20.10.33.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Mar 2023 10:33:44 -0700 (PDT)
Message-ID: <14361063-5005-4dd6-a314-737aaea7bf2c@blackwall.org>
Date: Mon, 20 Mar 2023 19:33:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ujjal Roy <royujjal@gmail.com>
References: <CAE2MWkm=zvkF_Ge1MH7vn+dmMboNt+pOEEVSgSeNNPRY5VmroA@mail.gmail.com>
 <a4ce2c34-eabe-a11f-682a-4cecf6c3462b@blackwall.org>
 <CAE2MWkkDNZuThePts_nU-LNYryYyWTYOMk5gmuoCoGPh4bf4ag@mail.gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <CAE2MWkkDNZuThePts_nU-LNYryYyWTYOMk5gmuoCoGPh4bf4ag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Kernel <linux-kernel@vger.kernel.org>, roopa@nvidia.com
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

On 20/03/2023 19:25, Ujjal Roy wrote:
> Hi Nik,
> 
> Flushing MDB can only be done when we are managing it per station not
> per port. For that we need to have MCAST_TO_UCAST, EHT and FAST_LEAVE.
> 
> Here one more point is - some vendors may offload MCAST_TO_UCAST
> conversion in their own FW to reduce CPU.
> 
> So, the best way is to have MCAST_TO_UCAST enabled and MDB will become
> per station, so we can delete MDB on disconnect. Shall, I create one
> patch for review?
> 
> Thanks,
> UjjaL Roy
> 
> On Mon, Mar 20, 2023 at 5:38 PM Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>
>> On 20/03/2023 13:45, Ujjal Roy wrote:
>>> Hi Nikolay,
>>>
>>> I have some query on multicast. When streams running on an STA and STA
>>> disconnected due to some reason. So, until the MDB is timed out the
>>> stream will be forwarded to the port and in turn to the driver and
>>> dropps there as no such STA.
>>>
>>> So, is the multicast_eht handling this scenario to take any action
>>> immediately? If not, can we do this to take quick action to reduce
>>> overhead of memory and driver?
>>>
>>> I have an idea on this. Can we mark this port group (MDB entry) as
>>> INACTIVE from the WiFi disconnect event and skip forwarding the stream
>>> to this port in br_multicast_flood by applying the check? I can share
>>> the patch on this.
>>>
>>> Thanks,
>>> UjjaL Roy
>>
>> Hi,
>> Fast leave and EHT (as that's v3's fast leave version) are about quickly converging when
>> a leave is received (e.g. when there are no listeners to quickly remove the mdb). They
>> don't deal with interface states (IIUC). Why don't you just flush the port's mdb entries
>> on disconnect? That would stop fwding.
>>
>> Cheers,
>>  Nik
>>
>>

Hi,
Alright, let's see the patch to better understand what is necessary.
Also please don't top post on netdev@.

Cheers,
 Nik

