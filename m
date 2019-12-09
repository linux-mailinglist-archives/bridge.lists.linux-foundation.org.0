Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A07117B4B
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 00:15:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3A6B87765;
	Mon,  9 Dec 2019 23:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FsVGWVjV2ZSb; Mon,  9 Dec 2019 23:15:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CAD887770;
	Mon,  9 Dec 2019 23:15:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 58970C1D7D;
	Mon,  9 Dec 2019 23:15:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A19D4C0881
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 23:15:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 855D92049D
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 23:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qqW8TcdV2fTF for <bridge@lists.linux-foundation.org>;
 Mon,  9 Dec 2019 23:15:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id D893D2046C
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 23:15:49 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id s8so955103qte.2
 for <bridge@lists.linux-foundation.org>; Mon, 09 Dec 2019 15:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=c98cUptVmJxE5gRFF2lQKZ85lSUZABTYRlTJayTa7PU=;
 b=YTeVouU4/q9oN7V71uXAknPNxVcrKdeLiadmUfvC7R1ASQTSCrq+Pr81B2gfXGypD1
 zXYjYZoWD2EYMGFNl0KWPG+93X+2ERGhoESqyBCXQIx/f9vQhccpfNqWvz73GCeEZeRM
 S8NJQwqRpQdm9ZKK8yuqcx/9NeuyYHyfrAnQvVobl8yWvweJg7zAd+6JTna32uoo3QP5
 XaN+X+rWzLzIqSyw+dc1io9te6PAfdjL813YFZcXQSDnttbHyOcVRND/DG5BRabxuAmX
 92Tp3FqR1GSAvRnEOw0azh3nM488Eem7uqoOub0QJmUzOpxDv3kLqbN5/oBCfhkGAf64
 nKSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=c98cUptVmJxE5gRFF2lQKZ85lSUZABTYRlTJayTa7PU=;
 b=YvhfYIz/Vi3J9uvhTjZTferaL3CiwE0ldlNBDcMmdmp9mSTeCcA4wFCOIy5EILD+Bp
 sxb28pVFsrjUXgEukY0ktClIQTTfyONXyFkviULkc/h2VwUcxvjhL6O5DJMCaw4dsayk
 DDJ9U+hE/WqjmixJV6LQMDSkaaJrOkukf1jUc/TP3Kht5sJ9OUW5Jp/drzaMrD8K1Ri2
 mibLFerQvmSkXsHIia2SK8dKyZTngmRrLnFBTfRD83I8LZyweZJpJAGPfrP59vRsMXSC
 mHomEe55I3lgPPoCZz9kCyLpeQEDG5AeR7W4nJu4wNHorta3noIVUmGmMSirgr5ggX9g
 dvLQ==
X-Gm-Message-State: APjAAAVGKgwp2Meov0wBJXrVOU900Sm7sdOHe6U9LsDaigSJ2s1u8HFb
 EGD0QdDyM1Wv67ICS/la2gE=
X-Google-Smtp-Source: APXvYqx87azaFPi5Z71WjpcRREL+sPda6Ebwe2n8koNLtli8Ibd7oYhajwkSAFOe8Q6VRBz0YyNwSQ==
X-Received: by 2002:aed:3c5b:: with SMTP id u27mr27822071qte.287.1575933348984; 
 Mon, 09 Dec 2019 15:15:48 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id h28sm339600qkk.48.2019.12.09.15.15.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 15:15:47 -0800 (PST)
Date: Mon, 9 Dec 2019 18:15:47 -0500
Message-ID: <20191209181547.GB1256102@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>
In-Reply-To: <20191209143423.7acb2f4b@hermes.lan>
References: <20191209211841.1239497-1-vivien.didelot@gmail.com>
 <20191209211841.1239497-2-vivien.didelot@gmail.com>
 <20191209143423.7acb2f4b@hermes.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH iproute2] iplink: add support for STP xstats
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

On Mon, 9 Dec 2019 14:34:23 -0800, Stephen Hemminger <stephen@networkplumber.org> wrote:
> On Mon,  9 Dec 2019 16:18:41 -0500
> Vivien Didelot <vivien.didelot@gmail.com> wrote:
> 
> > diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> > index 31fc51bd..e7f2bb78 100644
> > --- a/include/uapi/linux/if_bridge.h
> > +++ b/include/uapi/linux/if_bridge.h
> 
> These headers are semi-automatically updated from the kernel.
> Do not make changes here.

OK, I respin the series with only the minimal changes required for iproute2
to compile correctly.

Thank you,
Vivien
