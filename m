Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03692602716
	for <lists.bridge@lfdr.de>; Tue, 18 Oct 2022 10:37:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A583B60FF4;
	Tue, 18 Oct 2022 08:37:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A583B60FF4
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=jtfgTY9e
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z_yTU-_DZNwE; Tue, 18 Oct 2022 08:37:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4D42C60FEF;
	Tue, 18 Oct 2022 08:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D42C60FEF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CA981C007C;
	Tue, 18 Oct 2022 08:37:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DE04AC002D
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8FE660FEE
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8FE660FEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qHwyiVuSAWy8 for <bridge@lists.linux-foundation.org>;
 Tue, 18 Oct 2022 08:37:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46CE760FEB
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46CE760FEB
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 08:37:08 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id m16so19436149edc.4
 for <bridge@lists.linux-foundation.org>; Tue, 18 Oct 2022 01:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yxuQEGrIO8vmCslS3QuI3tXzAw6DQgSClcUN2Vo4mcw=;
 b=jtfgTY9eXvSBQ8QQS3vP7sFZZ5Zac6fDuYv5BXUkk/Dzc5wKQ+CtAr++Mj7qWKHttl
 dQ2/7pm0ZI2RfjydiNIbCiqhTwRNLcRX92KUmnWvqhkNMrG1JbljzpA2Dxw9D84SvGMW
 cxJnkTLop9xkURaeRj3IpLehpz2/ERgjWKVbAk4m2QRn7xYAVaGsb4rofHEXoTS2HfMx
 1cdedvj9lQvCyEBB7c5OWliit9q/g+9CG2IHCBNzkEu5JqR/i1+47xsES8vMadfEZZRr
 qCyK7sisl4QGJIw+GIvZibLk6Uy1DRy3EV2Mp3qVpjOfEu8VYNmhbzJy06d4s/HKEK0X
 qzjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yxuQEGrIO8vmCslS3QuI3tXzAw6DQgSClcUN2Vo4mcw=;
 b=m5tCSRmSo3dXB0dqEprWUyVQzDzNbrs6QuumWNz9p7vtnNXOvOWiO3hccUUyf0+Hb1
 abWgQzPfDoZrQwFe2VPCmZSPfu1+f6UUgoEDd49PGN20FX3AKsvkfgD97mHCA5D+16eg
 vu/ZMAVkC3JaUGC4d1gjXzaUR+7pf+oNXRQp+N3JZbBTryaFd+ghDbGHdznSMs4CkjSe
 JBuCs0Z5NN8Zpebt/5BqT9+7J25i3PoOqilkvyhFrk5EtBEAcJL6qtSaxNxTWD8qdqGA
 3dKILO8RdktKeC3D7U5JwVdlEUkv9IBj4btMxVhHnTUFU7fyOpZ05yd2FJCeu8cxwVLU
 GrDA==
X-Gm-Message-State: ACrzQf2DBIqdZFoyzaw4kB5X+6R2HMmEDLa26wrTRYb/RC8Qpsurcdil
 hF7dx8T79RsYGdIpt0/bP8s63g==
X-Google-Smtp-Source: AMsMyM7sHNQYtDXTv0bjYTa26O9ozx0687OmIQopxQAjo6JI0d2Reep7KOMWaCZgFmvyTW74ZRAyYw==
X-Received: by 2002:a05:6402:2146:b0:458:15d7:b99a with SMTP id
 bq6-20020a056402214600b0045815d7b99amr1605913edb.24.1666082226329; 
 Tue, 18 Oct 2022 01:37:06 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 p11-20020a170906604b00b0078df3b4464fsm7378166ejj.19.2022.10.18.01.37.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Oct 2022 01:37:05 -0700 (PDT)
Message-ID: <04d81c6c-33e3-c780-f546-c5050444620c@blackwall.org>
Date: Tue, 18 Oct 2022 11:37:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221018064001.518841-1-idosch@nvidia.com>
 <20221018064001.518841-2-idosch@nvidia.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221018064001.518841-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] selftests: bridge_vlan_mcast:
 Delete qdiscs during cleanup
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

On 18/10/2022 09:39, Ido Schimmel wrote:
> The qdiscs are added during setup, but not deleted during cleanup,
> resulting in the following error messages:
> 
>  # ./bridge_vlan_mcast.sh
>  [...]
>  # ./bridge_vlan_mcast.sh
>  Error: Exclusivity flag on, cannot modify.
>  Error: Exclusivity flag on, cannot modify.
> 
> Solve by deleting the qdiscs during cleanup.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  tools/testing/selftests/net/forwarding/bridge_vlan_mcast.sh | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

