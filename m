Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B062E4FF089
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 09:27:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 475E860B9B;
	Wed, 13 Apr 2022 07:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mGkyWMLiEoDo; Wed, 13 Apr 2022 07:27:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C994960B9A;
	Wed, 13 Apr 2022 07:27:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82CA0C0088;
	Wed, 13 Apr 2022 07:27:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D353EC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 07:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABB3B82A95
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 07:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dj-0gvcAwHVY for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 07:27:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA6D382A72
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 07:27:26 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id u18so1301498eda.3
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 00:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=qs/d6eRMsE3W5PauvBIvDHu7IP681Nr7sUF8OehanNA=;
 b=AY5+QQmby5D8nvGvA7iUqTaPU5tTPAIrk1g+XO3Z8dXZ4ra0Zjjmw42wd+4nTl01h9
 aEpnG+VL5SOMivcSneQAYKHQ8COdjSl6fATqvWjadCiAjnLjdpfgjeCi8CBouEMXlcUr
 CI9Adk9z6cLmT5DJ5L2UEd/XnDliz1O0xXDdbFjYSj7v1Ixz/ZjBQlUQyiKC3/d49ZtE
 bmmzQ0LExw2KPzX5dAJtHi1kBjtR23us4tKUujOnDgwWPQl0DfAMZjuIJXPvPXcwCJBA
 swWvDoSO8HSEi0y9hI2k5s1shuEG4WvCnDMn2x4KmQ2zxiOgjavZSXaALtTq51jowkTt
 lW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=qs/d6eRMsE3W5PauvBIvDHu7IP681Nr7sUF8OehanNA=;
 b=N/986njeR3mGz06qx7rd5IxYauvSC/9mafql6uHhQPQKDY0kBVUCF4FnKnJhbuJG0a
 +8AcK1FFnyJoKku/wNZ/xP/BrK90tFGm83fDk9ToFGs3A3MwPMajSRaPjOg9G93wIU5q
 dkDBFy3c8bD/gvIOMLYekPUKfF4sNunkvm79Tqpg5UtWZ8y3XSjt08VOBhNKFco5YdMw
 O3xBeZLegffRloNZgF4FgSfCVBbXpmCJgLQSgYWMlWZUy40vYvpL0umQYr6FLayftkSG
 VYBNHH2GVHVh5W/Qi7XMvQiT0CNxDFa7YN6Tu+6jVLjlgy0IVJtq0vBn7M0T1YouHbfL
 vkzg==
X-Gm-Message-State: AOAM532F3Py52nQV3EAJCI9Fnz2Ct9y6CCedqpy7pE+o01BzhrvM+79y
 escCpHSM1QXbKFmJjkXLOiuuog==
X-Google-Smtp-Source: ABdhPJxxBelGL9yLtiPd2tUkQahvRnMC7+6ddweJr5oxgAC1w1X4b7KtEQgCuSF01Q3H9tE8ruY9vg==
X-Received: by 2002:a05:6402:1941:b0:413:2b7e:676e with SMTP id
 f1-20020a056402194100b004132b7e676emr43135760edz.114.1649834844592; 
 Wed, 13 Apr 2022 00:27:24 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 a13-20020a50858d000000b0041d71502d2dsm834520edh.13.2022.04.13.00.27.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 00:27:24 -0700 (PDT)
Message-ID: <b9059a6e-353d-dea0-0d55-27829c8f51ae@blackwall.org>
Date: Wed, 13 Apr 2022 10:27:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: David Ahern <dsahern@kernel.org>, netdev@vger.kernel.org
References: <20220412132245.2148794-1-razor@blackwall.org>
 <c418e95e-440e-0502-58f2-63179f370a98@kernel.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <c418e95e-440e-0502-58f2-63179f370a98@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: idosch@idosch.org, bridge@lists.linux-foundation.org, davem@davemloft.net,
 kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v3 0/8] net: bridge: add flush
	filtering support
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

On 13/04/2022 05:04, David Ahern wrote:
> On 4/12/22 7:22 AM, Nikolay Aleksandrov wrote:
>> Hi,
>> This patch-set adds support to specify filtering conditions for a bulk
>> delete (flush) operation. This version uses a new nlmsghdr delete flag
>> called NLM_F_BULK in combination with a new ndo_fdb_del_bulk op which is
>> used to signal that the driver supports bulk deletes (that avoids
>> pushing common mac address checks to ndo_fdb_del implementations and
>> also has a different prototype and parsed attribute expectations, more
>> info in patch 03). The new delete flag can be used for any RTM_DEL*
>> type, implementations just need to be careful with older kernels which
>> are doing non-strict attribute parses. Here I use the fact that mac
> 
> overall it looks fine to me. The rollout of BULK delete for other
> commands will be slow so we need a way to reject the BULK flag if the
> handler does not support it. One thought is to add another flag to
> rtnl_link_flags (e.g., RTNL_FLAG_BULK_DEL_SUPPORTED) and pass that flag
> in for handlers that handle bulk delete and reject it for others in core
> rtnetlink code.

Good point, it will be nice to error out with something meaningful if
bulk delete isn't supported. I'll look into it.

Thanks,
 Nik

