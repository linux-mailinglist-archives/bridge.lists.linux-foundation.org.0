Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFF060CA87
	for <lists.bridge@lfdr.de>; Tue, 25 Oct 2022 13:03:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A90E4403D6;
	Tue, 25 Oct 2022 11:03:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A90E4403D6
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=WspXucyO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xrTF9rPwpR7S; Tue, 25 Oct 2022 11:03:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 15210403E0;
	Tue, 25 Oct 2022 11:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15210403E0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 98A0EC007C;
	Tue, 25 Oct 2022 11:03:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A0205C002D
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 11:03:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6825C60B10
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 11:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6825C60B10
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=WspXucyO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KX5vA-GsYjlA for <bridge@lists.linux-foundation.org>;
 Tue, 25 Oct 2022 11:03:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2229605B0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2229605B0
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 11:03:52 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id y14so11452779ejd.9
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 04:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5EB9AVAb0CKe/bZtFL9Z2aSwLhDuu3g5m22iVMqNVNo=;
 b=WspXucyOJ4shf+jlfrMxHZh0eLF1c4KqgCQaD1vpHLh0OCOyovmur/BcvV+48YVObS
 DlPwI4XE05qi2pHaMUWqBDCFgxs3h8F0RAxShXj5gI6ebFmVEK529iVoi4lChcnw8VZ1
 8LWgRzZanwj15lXAPOFY/GnjkNluBysiFFKQ7DZXO1618jti3fOBv8SFcYENlVATUKwx
 y7bILplB9+esl8cEf4rVdFcgz8ljniRBGwE8ZkQp0Z3mm0gDRbKoouPUkcqB5g268vef
 ZlGfHjnW6u5vnLRG16EqZsInn7I545JJohzz3AfbeQ8sf79cVg9lB7d+lA54zu48ifM8
 f3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5EB9AVAb0CKe/bZtFL9Z2aSwLhDuu3g5m22iVMqNVNo=;
 b=Mc8RSQjY0GF9jOvE8wT35qXnIYQrc632hyNR4roTVvZhe+t4d6EEkQd02g7TOXeKCB
 Y2XDS4Z7xTSlKOBKPsUtxyfFyHCAam6NQ0yRx+oFU6A2jdIVVd1pfX+mnhTyPInAjDST
 JTj4FxX8W1U/78RRoWMGwVEU0EHsArk6YoFJNbadgwL3D5cAZH85tV8PZM9Ti9852wEv
 RJbhSJY1NqELGGynw4Q8z4AsdJ1ZYBoATULoOcYXozTL9BbVLcmVXEg+8up2wio82HJC
 hqXTb0i57hm1NE75DEd/kU6UJM9+51Q81yYy6RNr7SfnXcJ2VOj2u8XphkPSTEMhUfNz
 RxKg==
X-Gm-Message-State: ACrzQf19ph0WoD4mygawHfkGLZ3JRxCu46qmtJ6Cx4MOdAUbw4SgfQjf
 5LLt3uKYZHnimFz4y9Tv2Q6dYg==
X-Google-Smtp-Source: AMsMyM7Oe07nZK3s/GsiDJtVjCrw97/j7fj6lyYUHRtua05N+MMRPLKl+JrdZ7gy3Y0CHEMTBnMzQw==
X-Received: by 2002:a17:906:5a4b:b0:78d:8790:d4a1 with SMTP id
 my11-20020a1709065a4b00b0078d8790d4a1mr31907110ejc.329.1666695830600; 
 Tue, 25 Oct 2022 04:03:50 -0700 (PDT)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 w21-20020a50fa95000000b0045c47b2a800sm1405702edr.67.2022.10.25.04.03.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Oct 2022 04:03:50 -0700 (PDT)
Message-ID: <9dc0592e-04a0-bc92-0ced-a7d43f8a0016@blackwall.org>
Date: Tue, 25 Oct 2022 14:03:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221025100024.1287157-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@kapio-technology.com,
 roopa@nvidia.com, vladimir.oltean@nxp.com, edumazet@google.com,
 mlxsw@nvidia.com, jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 04/16] bridge: switchdev: Allow
 device drivers to install locked FDB entries
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

On 25/10/2022 13:00, Ido Schimmel wrote:
> From: "Hans J. Schultz" <netdev@kapio-technology.com>
> 
> When the bridge is offloaded to hardware, FDB entries are learned and
> aged-out by the hardware. Some device drivers synchronize the hardware
> and software FDBs by generating switchdev events towards the bridge.
> 
> When a port is locked, the hardware must not learn autonomously, as
> otherwise any host will blindly gain authorization. Instead, the
> hardware should generate events regarding hosts that are trying to gain
> authorization and their MAC addresses should be notified by the device
> driver as locked FDB entries towards the bridge driver.
> 
> Allow device drivers to notify the bridge driver about such entries by
> extending the 'switchdev_notifier_fdb_info' structure with the 'locked'
> bit. The bit can only be set by device drivers and not by the bridge
> driver.
> 
> Prevent a locked entry from being installed if MAB is not enabled on the
> bridge port. By placing this check in the bridge driver we avoid the
> need to reflect the 'BR_PORT_MAB' flag to device drivers.
> 
> If an entry already exists in the bridge driver, reject the locked entry
> if the current entry does not have the "locked" flag set or if it points
> to a different port. The same semantics are implemented in the software
> data path.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     Changes made by me:
>     
>      * Reword commit message.
>      * Forbid locked entries when MAB is not enabled.
>      * Forbid roaming of locked entries.
>      * Avoid setting 'locked' bit towards device drivers.
> 
>  include/net/switchdev.h   |  1 +
>  net/bridge/br.c           |  3 ++-
>  net/bridge/br_fdb.c       | 22 ++++++++++++++++++++--
>  net/bridge/br_private.h   |  2 +-
>  net/bridge/br_switchdev.c |  1 +
>  5 files changed, 25 insertions(+), 4 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


