Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FB06B93F6
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 13:36:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B011606AA;
	Tue, 14 Mar 2023 12:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B011606AA
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=yOVDg75v
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sXph7npi5t0e; Tue, 14 Mar 2023 12:36:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B0C7560E2F;
	Tue, 14 Mar 2023 12:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0C7560E2F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6505FC008A;
	Tue, 14 Mar 2023 12:35:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 95BC2C0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70D506108A
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:35:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70D506108A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WuRhC_-Cq933 for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 12:35:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCA4660E2F
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BCA4660E2F
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:35:56 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 p23-20020a05600c1d9700b003ead4835046so624127wms.0
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 05:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678797355;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IRDlS0P57tUZ82YucMyjb9yALmixnNO4XP3+ZIPkZpQ=;
 b=yOVDg75vY/65TxnKwGr91dyQ6ubhO4dnzBkY6+pEAutKm7ZYJ1OSllF6vx44oWrNS0
 Msr/B62sTki6UejCYczVpldvSqOt/lId7MUQupMMxW6SC3EnmhTNe2tP3QOqdSsmTyAh
 ARs18LVjaCp3EKweHA7/rqzhlXm1QONtbaraL62RdVEMmZdt5+6d91P9thACNnGMJMCW
 li0guYsHdeIwLzR8xDnyeZOMycuB+/dWS+I0gs9wumoWwK4FMT5RiJSiOMjzxzWx06tf
 D9yL1QSYm+2l/DxHMjz9QeMkaN5IwLMar0gwWrAyXhkfAofM9RqXT4jUH5omoDF/vcqn
 84Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678797355;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IRDlS0P57tUZ82YucMyjb9yALmixnNO4XP3+ZIPkZpQ=;
 b=EchBWjBWAvwiTt8d3C9v//FXIdeSRC7Hfmuv67tv6lF4emS1A6iLAqahLfbUZOfnzk
 9C7d9aREc9jwxHkHhxBb+OtNULMOi0SpknqGMcIRtx7Y7c20HwGQjt62fWEAXU49GQOR
 7qABXoTQISQuoH5A9uvttMhZYMi/O5ajR6s5Jcn6oiw+dpvnQ70QBi0cGtNr0x/npJl6
 h7Sf0YHbkkOSPcawDCuoaGzZr6djS2EtVMWRyz0Ip73TILw/NVeykpjlmHcYmn3VvfBl
 CAMAeFsGcbP50ymN9sPx06QyQ1p7yN/J/QZX3xaEZcXSsjPwAtLuGaNVIZtFrq0p3u3a
 Acjw==
X-Gm-Message-State: AO0yUKUU2fB3ypNbg3z3golQc+7rVzFM3pz5y5DBj2fyUHkaptcZMyCo
 vkW+OgA6UxZEeG719Fqll/Pt1Q==
X-Google-Smtp-Source: AK7set8i065zqslnCbN3zZbZhgPrZ2NlxecKKLNr9yJhHAPgkbgs8rBFV0XlzAmtLcXBd80GccWK0A==
X-Received: by 2002:a05:600c:548b:b0:3e2:6ec:61ea with SMTP id
 iv11-20020a05600c548b00b003e206ec61eamr14411203wmb.28.1678797355023; 
 Tue, 14 Mar 2023 05:35:55 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 h22-20020a05600c351600b003e733a973d2sm2957887wmq.39.2023.03.14.05.35.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 05:35:54 -0700 (PDT)
Message-ID: <4368c837-8474-858e-90ea-e409d08bf84c@blackwall.org>
Date: Tue, 14 Mar 2023 14:35:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-12-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-12-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 11/11] selftests: net: Add VXLAN MDB
	test
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

On 13/03/2023 16:53, Ido Schimmel wrote:
> Add test cases for VXLAN MDB, testing the control and data paths. Two
> different sets of namespaces (i.e., ns{1,2}_v4 and ns{1,2}_v6) are used
> in order to test VXLAN MDB with both IPv4 and IPv6 underlays,
> respectively.
> 
> Example truncated output:
> 
>  # ./test_vxlan_mdb.sh
>  [...]
>  Tests passed: 620
>  Tests failed:   0
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * New patch.
> 
>  tools/testing/selftests/net/Makefile          |    1 +
>  tools/testing/selftests/net/config            |    1 +
>  tools/testing/selftests/net/test_vxlan_mdb.sh | 2318 +++++++++++++++++
>  3 files changed, 2320 insertions(+)
>  create mode 100755 tools/testing/selftests/net/test_vxlan_mdb.sh
> 

Wohoo, nice!
Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>
