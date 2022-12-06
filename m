Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E445F64432F
	for <lists.bridge@lfdr.de>; Tue,  6 Dec 2022 13:32:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 062E660FE3;
	Tue,  6 Dec 2022 12:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 062E660FE3
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=60obe3wn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gZQxd__5lxu0; Tue,  6 Dec 2022 12:32:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 9C2D760FE0;
	Tue,  6 Dec 2022 12:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C2D760FE0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2E384C007C;
	Tue,  6 Dec 2022 12:32:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A562AC002D
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 12:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69BEF40A03
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 12:32:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69BEF40A03
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=60obe3wn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X9LJPZjpZmEB for <bridge@lists.linux-foundation.org>;
 Tue,  6 Dec 2022 12:32:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 626F8409FA
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 626F8409FA
 for <bridge@lists.linux-foundation.org>; Tue,  6 Dec 2022 12:32:05 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id d20so20113642edn.0
 for <bridge@lists.linux-foundation.org>; Tue, 06 Dec 2022 04:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=UBQgxqUKfCeoRJwO5X9i5iROVCc9Ze5aifdNi+9+nK0=;
 b=60obe3wn8ih/Uj7kSxFY+m0RxFLo54cM0gyi0FOiEqw6dLyhg7SWhHKqDwdEJUrzM5
 bvvAb6OHLMnC/AstRbPOunffIBj8LP2a893XiHPvfjbA10N7ZEtqOnA5V9LUgs/BGJh1
 OEznEGwlxacgR65Ra+Z9FSHYiqR+RCqg6/4MaqXX4ajJF9M/vWmEFIINVwMo8mnmxf1W
 XsUNC+1TRXUttrczNQU8MWWv8oYBcNd6I3WaKbksiPdOYss5dzkPzXqQL1DbTdFAu6+E
 HZeANEspCm7/hgKmPS7K/9ciaI0MFs8rILewgp81yhOFmVypnliE3AvIPVRvFmuYLHqd
 FR7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UBQgxqUKfCeoRJwO5X9i5iROVCc9Ze5aifdNi+9+nK0=;
 b=SgIR8ZvdExuvFFdu4XNX1nUNba5t0z7mP6kVcN3e1oQF/CQAzeAKnizsdYkb6fLguL
 cFy7lQ7k6DGbRgOVpzklgFmOPmjBo72bv/zJEoAyDVmFnzibRfQrLKqgcdxvD4ObmUOx
 PecWD5Ha6x8dheont2TJ6OaFYQhrlspAuQsZ3Bt4WBBL2JPoZ6AK8A1gKBI6HTFI1Hby
 7FtzrlHPdTKIWcpfrun8yGdUiDsyTrY2AFFd7uHQalOUOhHqpRrru+9d9ZXONaGUFCH2
 84yypW58RqV4HKmGz4WwlRafYSzENhOP0jMbg9xefGnjgdFW0i1gx9txGT/dwNA+TZO2
 Xtow==
X-Gm-Message-State: ANoB5pmQQX5X1C9buY2NqNRTF6M/2o6+LpHoS2XEZjFiKrHe9CpkkHNK
 4mk2rRzMbHqB1thta2gpQmiPNA==
X-Google-Smtp-Source: AA0mqf4FlSc6u/X8EbuiJjz6xZqQ2CvE8fRG9s8yz9LAFCgiXLH9QRMhJ37tIdrFFfo9daCnrZUqaA==
X-Received: by 2002:a05:6402:2b8c:b0:466:12a0:11f3 with SMTP id
 fj12-20020a0564022b8c00b0046612a011f3mr215891edb.22.1670329923223; 
 Tue, 06 Dec 2022 04:32:03 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 u25-20020aa7db99000000b0046c7c3755a7sm931546edt.17.2022.12.06.04.32.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Dec 2022 04:32:02 -0800 (PST)
Message-ID: <35aefd47-937d-c4c9-8cab-697ea07d098f@blackwall.org>
Date: Tue, 6 Dec 2022 14:32:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221206105809.363767-1-idosch@nvidia.com>
 <20221206105809.363767-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221206105809.363767-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 1/9] bridge: mcast: Centralize
 netlink attribute parsing
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

On 06/12/2022 12:58, Ido Schimmel wrote:
> Netlink attributes are currently passed deep in the MDB creation call
> chain, making it difficult to add new attributes. In addition, some
> validity checks are performed under the multicast lock although they can
> be performed before it is ever acquired.
> 
> As a first step towards solving these issues, parse the RTM_{NEW,DEL}MDB
> messages into a configuration structure, relieving other functions from
> the need to handle raw netlink attributes.
> 
> Subsequent patches will convert the MDB code to use this configuration
> structure.
> 
> This is consistent with how other rtnetlink objects are handled, such as
> routes and nexthops.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Remove 'skb' argument from br_mdb_config_init()
>     * Mark 'nlh' argument as 'const'.
> 

Thanks,
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


